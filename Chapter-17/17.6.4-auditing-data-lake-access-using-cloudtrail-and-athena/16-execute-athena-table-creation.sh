aws athena start-query-execution   --query-string file://create-cloudtrail-table.sql   --result-configuration OutputLocation=s3://$CLOUDTRAIL_BUCKET/athena-results/   --region $REGION
