from awsglue.context import GlueContext
from pyspark.context import SparkContext

sc = SparkContext()
glueContext = GlueContext(sc)
spark = glueContext.spark_session

datasource = glueContext.create_dynamic_frame.from_catalog(
    database="$DATABASE_NAME",
    table_name="$TABLE_NAME"
)

df = datasource.toDF()

df_clean = df.dropna()

user_features = df_clean.groupBy("user_id").count()

df_clean.write.mode("overwrite")     .partitionBy("event_type")     .parquet("s3://$CURATED_BUCKET/curated/")
