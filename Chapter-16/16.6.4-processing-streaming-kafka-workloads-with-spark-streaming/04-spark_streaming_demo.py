from pyspark.sql import SparkSession
from pyspark.sql.functions import col, current_timestamp

spark = SparkSession.builder     .appName("SparkStreamingDemoWithoutKafka")     .getOrCreate()

output_path = "s3://CURATED_BUCKET/streaming-output/"
checkpoint_path = "s3://CURATED_BUCKET/checkpoints/demo-streaming/"

stream_df = spark.readStream     .format("rate")     .option("rowsPerSecond", 5)     .load()

processed_df = stream_df.select(
    col("value").alias("event_id"),
    current_timestamp().alias("processing_time")
)

query = processed_df.writeStream     .format("parquet")     .option("path", output_path)     .option("checkpointLocation", checkpoint_path)     .outputMode("append")     .start()

query.awaitTermination()
