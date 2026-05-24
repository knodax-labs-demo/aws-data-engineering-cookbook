from pyspark.sql import SparkSession
 
spark = SparkSession.builder.appName("SecureGlueJob").getOrCreate()
 
df = spark.createDataFrame([
    (1, "Alice"),
    (2, "Bob")
], ["id", "name"])
 
df.write.mode("overwrite").parquet("s3://OUTPUT_BUCKET/processed-data/")
