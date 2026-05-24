export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
 
export REGION=us-east-1
 
export BUCKET_NAME=enterprise-data-catalog-$ACCOUNT_ID
 
export DATABASE_NAME=enterprise_data_catalog
 
export CRAWLER_NAME=enterprise-data-crawler
 
export ROLE_NAME=AWSGlueEnterpriseCrawlerRole
