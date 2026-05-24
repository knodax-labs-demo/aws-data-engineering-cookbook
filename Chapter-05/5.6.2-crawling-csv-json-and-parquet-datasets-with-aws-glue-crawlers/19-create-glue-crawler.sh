aws glue create-crawler   --name $CRAWLER_NAME   --role arn:aws:iam::$ACCOUNT_ID:role/$ROLE_NAME   --database-name $DATABASE_NAME   --targets S3Targets=[{Path=s3://$BUCKET_NAME/}]
