ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
REGION=us-east-1
BUCKET_NAME=partitioned-glue-etl-$ACCOUNT_ID
DATABASE_NAME=partitioned_etl_db
CRAWLER_NAME=partitioned-etl-crawler
ROLE_NAME=AWSGluePartitionRole
JOB_NAME=partition-large-dataset-job
