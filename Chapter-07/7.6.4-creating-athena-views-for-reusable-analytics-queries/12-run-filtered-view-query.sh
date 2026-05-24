aws athena start-query-execution   --query-string "
  SELECT *
  FROM $DATABASE_NAME.$VIEW_NAME
  WHERE total_sales > 500;
  "   --query-execution-context Database=$DATABASE_NAME   --result-configuration OutputLocation=s3://$ATHENA_RESULTS_BUCKET/results/
