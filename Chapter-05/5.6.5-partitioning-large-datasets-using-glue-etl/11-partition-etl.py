from pyspark.context import SparkContext
from awsglue.context import GlueContext
from pyspark.sql.functions import year, month, to_date, lpad, col
 
sc = SparkContext()
glueContext = GlueContext(sc)
spark = glueContext.spark_session
 
input_path = "s3://$BUCKET_NAME/raw/"
output_path = "s3://$BUCKET_NAME/partitioned/"
 
df = spark.read.option("header", "true").csv(input_path)
 
df = df.withColumn("order_dt", to_date(col("order_date")))        .withColumn("year", year(col("order_dt")).cast("string"))        .withColumn("month", lpad(month(col("order_dt")).cast("string"), 2, "0"))
 
df.write.mode("overwrite")   .partitionBy("year", "month", "region")   .parquet(output_path)
