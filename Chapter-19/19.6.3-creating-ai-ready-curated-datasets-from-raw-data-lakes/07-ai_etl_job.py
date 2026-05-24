import sys
from awsglue.context import GlueContext
from pyspark.context import SparkContext
from awsglue.dynamicframe import DynamicFrame

sc = SparkContext()
glueContext = GlueContext(sc)
spark = glueContext.spark_session

datasource = glueContext.create_dynamic_frame.from_catalog(
    database="ai_curated_demo_db",
    table_name="customer_data"
)

df = datasource.toDF()

df_clean = df.fillna({
    "age": 0,
    "income": 0
})

df_clean = df_clean.withColumnRenamed("income", "annual_income")

df_clean.write.mode("overwrite")     .partitionBy("region")     .parquet("s3://de-ai-curated-zone-demo/customer-curated/")
