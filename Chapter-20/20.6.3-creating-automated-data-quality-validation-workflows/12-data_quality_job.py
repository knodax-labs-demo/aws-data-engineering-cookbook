from awsgluedq.transforms import EvaluateDataQuality
from awsglue.context import GlueContext
from pyspark.context import SparkContext
from pyspark.sql.functions import col

sc = SparkContext()
glueContext = GlueContext(sc)

datasource = glueContext.create_dynamic_frame.from_catalog(
    database="$DATABASE_NAME",
    table_name="sales_data"
)

datasource = datasource.resolveChoice(
    specs=[("amount", "cast:double")]
)

EvaluateDataQuality().process_rows(
    frame=datasource,
    ruleset='''
        Rules = [
            IsComplete "transaction_id",
            IsComplete "customer_id",
            IsComplete "amount",
            ColumnValues "amount" > 0,
            RowCount > 0
        ]
    ''',
    publishing_options={
        "dataQualityEvaluationContext": "sales_quality_validation",
        "enableDataQualityCloudWatchMetrics": True,
        "enableDataQualityResultsPublishing": True
    }
)

df = datasource.toDF()

valid_df = df.filter(
    col("transaction_id").isNotNull() &
    col("customer_id").isNotNull() &
    col("amount").isNotNull() &
    (col("amount") > 0)
)

valid_df.write.mode("overwrite").parquet(
    "s3://$CURATED_BUCKET/validated/"
)

print("Data quality validation completed successfully")
