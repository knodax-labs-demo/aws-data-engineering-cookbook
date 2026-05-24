aws athena start-query-execution   --query-string "
  SELECT page, SUM(views) AS total_views
  FROM $TABLE_NAME
  WHERE year='2025'
    AND month='05'
  GROUP BY page;
  "   --query-execution-context Database=$DATABASE_NAME   --result-configuration OutputLocation=s3://$ATHENA_RESULTS_BUCKET/results/
