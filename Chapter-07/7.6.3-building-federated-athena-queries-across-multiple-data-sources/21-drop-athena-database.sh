aws athena start-query-execution   --query-string "DROP DATABASE IF EXISTS $DATABASE_NAME;"   --result-configuration OutputLocation=s3://$ATHENA_RESULTS_BUCKET/results/
