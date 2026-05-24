export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
 
export REGION=us-east-1
 
export BUCKET_NAME=multi-format-data-lake-$ACCOUNT_ID
 
export DATABASE_NAME=enterprise_multiformat_db
 
export CRAWLER_NAME=enterprise-multiformat-crawler
 
export ROLE_NAME=AWSGlueCrawlerRole
