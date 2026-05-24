SELECT
  region,
  SUM(amount) AS total_sales
FROM enterprise_data_lake.customer_orders
GROUP BY region;
