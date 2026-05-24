aws athena start-query-execution   --query-string "
  CREATE OR REPLACE VIEW $DATABASE_NAME.$VIEW_NAME AS
  SELECT
      region,
      COUNT(*) AS total_orders,
      SUM(amount) AS total_sales,
      AVG(amount) AS average_sales
  FROM $DATABASE_NAME.$TABLE_NAME
  GROUP BY region;
  "   --result-configuration OutputLocation=s3://$ATHENA_RESULTS_BUCKET/results/
