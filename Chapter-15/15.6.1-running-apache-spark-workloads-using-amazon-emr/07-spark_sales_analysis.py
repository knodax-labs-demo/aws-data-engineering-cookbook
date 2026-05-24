from pyspark.sql import SparkSession
from pyspark.sql.functions import sum

spark = SparkSession.builder     .appName("SalesAnalysis")     .getOrCreate()

input_path = "s3://RAW_BUCKET/sales_data.csv"

output_path = "s3://CURATED_BUCKET/sales-summary"

df = spark.read.csv(
    input_path,
    header=True,
    inferSchema=True
)

summary_df = df.groupBy("region")     .agg(
        sum("sales_amount")
        .alias("total_sales")
    )

summary_df.write.mode("overwrite")     .csv(
        output_path,
        header=True
    )

spark.stop()
