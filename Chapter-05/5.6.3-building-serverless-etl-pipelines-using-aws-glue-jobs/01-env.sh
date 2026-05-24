export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
export REGION=us-east-1
export BUCKET_NAME=serverless-etl-lake-$ACCOUNT_ID
export DATABASE_NAME=serverless_etl_db
export CRAWLER_NAME=serverless-etl-crawler
export ROLE_NAME=AWSGlueETLRole
export JOB_NAME=serverless-etl-job
