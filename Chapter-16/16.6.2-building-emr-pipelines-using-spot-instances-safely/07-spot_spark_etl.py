from pyspark.sql import SparkSession
from pyspark.sql.functions import sum

spark = SparkSession.builder     .appName("SpotOptimizedETL")     .config(
        "spark.task.maxFailures",
        "8"
    )     .config(
        "spark.speculation",
        "true"
    )     .getOrCreate()

input_path = (
    "s3://RAW_BUCKET/transactions.csv"
)

output_path = (
    "s3://CURATED_BUCKET/aggregated-output"
)

df = spark.read.csv(
    input_path,
    header=True,
    inferSchema=True
)

aggregated_df = df.groupBy("region")     .agg(
        sum("amount")
        .alias("total_amount")
    )

aggregated_df.write.mode("overwrite")     .parquet(output_path)

spark.stop()
