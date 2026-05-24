aws athena start-query-execution   --query-string "CREATE DATABASE IF NOT EXISTS $ATHENA_DATABASE;"   --result-configuration OutputLocation=s3://$CLOUDTRAIL_BUCKET/athena-results/   --region $REGION
