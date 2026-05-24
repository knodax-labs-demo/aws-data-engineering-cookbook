from pyspark.context import SparkContext
from awsglue.context import GlueContext
 
sc = SparkContext()
glueContext = GlueContext(sc)
spark = glueContext.spark_session
 
df = spark.read.option("header", "true").csv(
    "s3://csv-to-parquet-lake-$ACCOUNT_ID/raw/"
)
 
df.write.mode("overwrite").parquet(
    "s3://csv-to-parquet-lake-$ACCOUNT_ID/parquet/"
)
