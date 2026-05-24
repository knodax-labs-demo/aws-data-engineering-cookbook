aws athena start-query-execution   --query-string "
  SELECT * FROM $DATABASE_NAME.$TABLE_NAME;
  "   --query-execution-context Database=$DATABASE_NAME   --result-configuration OutputLocation=s3://$ATHENA_RESULTS_BUCKET/results/
