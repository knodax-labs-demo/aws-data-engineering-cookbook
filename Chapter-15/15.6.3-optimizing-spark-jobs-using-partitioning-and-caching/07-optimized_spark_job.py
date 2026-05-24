from pyspark.sql import SparkSession
from pyspark.sql.functions import sum

spark = SparkSession.builder     .appName("OptimizedSalesAnalytics")     .getOrCreate()

input_path = "s3://RAW_BUCKET/sales_data.csv"

output_path = (
    "s3://CURATED_BUCKET/optimized-output"
)

df = spark.read.csv(
    input_path,
    header=True,
    inferSchema=True
)

partitioned_df = df.repartition(4, "region")

partitioned_df.cache()

partitioned_df.count()

regional_sales = partitioned_df.groupBy("region")     .agg(
        sum("sales_amount")
        .alias("total_sales")
    )

product_sales = partitioned_df.groupBy("product")     .agg(
        sum("sales_amount")
        .alias("total_sales")
    )

regional_sales.write.mode("overwrite")     .csv(
        output_path + "/regional-sales",
        header=True
    )

product_sales.write.mode("overwrite")     .csv(
        output_path + "/product-sales",
        header=True
    )

spark.stop()
