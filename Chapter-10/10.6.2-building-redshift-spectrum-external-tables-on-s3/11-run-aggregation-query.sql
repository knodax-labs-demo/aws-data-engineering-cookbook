SELECT
  region,
  SUM(amount) AS total_sales
FROM spectrum_schema.sales_data
GROUP BY region;
