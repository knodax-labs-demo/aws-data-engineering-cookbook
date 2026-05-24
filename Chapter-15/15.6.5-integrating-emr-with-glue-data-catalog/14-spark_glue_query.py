from pyspark.sql import SparkSession

spark = SparkSession.builder     .appName("GlueCatalogQuery")     .enableHiveSupport()     .getOrCreate()

df = spark.sql("""
SELECT
    region,
    SUM(sales_amount) AS total_sales
FROM analytics_db.sales_data
GROUP BY region
""")

df.show()

spark.stop()
