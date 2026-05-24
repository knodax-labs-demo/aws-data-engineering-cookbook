aws athena start-query-execution   --query-string "
  SELECT region, SUM(amount) AS total_sales
  FROM $TABLE_NAME
  GROUP BY region;
  "   --query-execution-context Database=$DATABASE_NAME   --result-configuration OutputLocation=s3://$ATHENA_RESULTS_BUCKET/results/
