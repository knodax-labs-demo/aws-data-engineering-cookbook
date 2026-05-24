aws athena start-query-execution   --query-string "
  SELECT *
  FROM $TABLE_NAME
  WHERE year='2025'
    AND month='05'
    AND day='01';
  "   --query-execution-context Database=$DATABASE_NAME   --result-configuration OutputLocation=s3://$ATHENA_RESULTS_BUCKET/results/
