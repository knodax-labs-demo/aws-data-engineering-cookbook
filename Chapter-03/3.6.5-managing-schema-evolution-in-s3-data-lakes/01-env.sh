export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
export REGION=us-east-1
export BUCKET_NAME=schema-evolution-lake-$ACCOUNT_ID
export DATABASE_NAME=schema_evolution_db
export CRAWLER_NAME=schema-evolution-crawler
export ROLE_NAME=AWSGlueCrawlerRole
