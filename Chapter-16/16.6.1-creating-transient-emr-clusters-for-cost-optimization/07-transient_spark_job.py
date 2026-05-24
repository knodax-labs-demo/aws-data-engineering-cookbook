from pyspark.sql import SparkSession
from pyspark.sql.functions import avg

spark = SparkSession.builder     .appName("TransientClusterAnalytics")     .getOrCreate()

input_path = (
    "s3://RAW_BUCKET/clickstream.csv"
)

output_path = (
    "s3://CURATED_BUCKET/session-analytics"
)

df = spark.read.csv(
    input_path,
    header=True,
    inferSchema=True
)

analytics_df = df.groupBy("region")     .agg(
        avg("duration")
        .alias("avg_duration")
    )

analytics_df.write.mode("overwrite")     .csv(
        output_path,
        header=True
    )

spark.stop()
