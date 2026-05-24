from pyspark.sql import SparkSession
 
spark = SparkSession.builder.appName("FailingGlueJob").getOrCreate()
 
df = spark.read.option("header", "true").csv("s3://INPUT_BUCKET/input/")
 
print("Starting ETL processing")
 
raise Exception("Simulated Glue ETL failure for monitoring demonstration")
