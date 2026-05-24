aws glue create-crawler   --name churn-raw-crawler   --role GlueServiceRole   --database-name churn_db   --targets S3Targets=[{Path="s3://$RAW_BUCKET/"}]
