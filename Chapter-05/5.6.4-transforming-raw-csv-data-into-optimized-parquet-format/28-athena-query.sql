SELECT region, SUM(amount)
FROM parquet_table
GROUP BY region;
