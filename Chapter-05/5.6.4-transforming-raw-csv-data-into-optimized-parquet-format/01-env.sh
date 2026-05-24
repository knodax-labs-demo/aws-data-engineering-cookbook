export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
 
export REGION=us-east-1
 
export BUCKET_NAME=csv-to-parquet-lake-$ACCOUNT_ID
 
export DATABASE_NAME=csv_parquet_db
 
export CRAWLER_NAME=csv-parquet-crawler
 
export ROLE_NAME=AWSGlueParquetRole
 
export JOB_NAME=csv-to-parquet-job
