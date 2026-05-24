from pyspark.sql import SparkSession
from pyspark.sql.functions import sum, count, col

spark = SparkSession.builder     .appName("PetabyteScalePySparkTransform")     .config(
        "spark.sql.adaptive.enabled",
        "true"
    )     .config(
        "spark.sql.shuffle.partitions",
        "200"
    )     .getOrCreate()

input_path = "s3://RAW_BUCKET/events/"

output_path = (
    "s3://CURATED_BUCKET/events-summary/"
)

df = spark.read     .option("header", "true")     .option("inferSchema", "true")     .csv(input_path)

filtered_df = df.filter(
    col("event_type") == "purchase"
)

summary_df = filtered_df.groupBy(
    "region",
    "year",
    "month"
).agg(
    count("*").alias("purchase_count"),
    sum("event_value").alias("total_purchase_value")
)

optimized_df = summary_df.repartition(
    "region"
)

optimized_df.write     .mode("overwrite")     .partitionBy("year", "month")     .parquet(output_path)

spark.stop()
