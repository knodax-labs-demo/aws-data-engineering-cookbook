aws glue create-crawler   --name $CRAWLER_NAME   --role $GLUE_ROLE   --database-name $DATABASE_NAME   --targets "{\"S3Targets\":[{\"Path\":\"s3://$RAW_BUCKET/sales/\"}]}"   --region $REGION
