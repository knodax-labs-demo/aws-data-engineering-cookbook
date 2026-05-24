import sys
from awsglue.transforms import *
from awsglue.utils import getResolvedOptions
from pyspark.context import SparkContext
from awsglue.context import GlueContext
from awsglue.job import Job
 
sc = SparkContext()
glueContext = GlueContext(sc)
spark = glueContext.spark_session
 
datasource = glueContext.create_dynamic_frame.from_catalog(
    database="serverless_etl_db",
    table_name="raw"
)
 
df = datasource.toDF()
 
filtered_df = df.filter(df.amount > 200)
 
filtered_df.write.mode("overwrite").csv(
    "s3://serverless-etl-lake-$ACCOUNT_ID/processed/"
)
