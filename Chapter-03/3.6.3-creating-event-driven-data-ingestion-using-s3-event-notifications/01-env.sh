export REGION=us-east-1
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
export BUCKET_NAME=event-driven-lake-${ACCOUNT_ID}
export FUNCTION_NAME=s3-ingestion-processor
export ROLE_NAME=lambda-s3-ingestion-role
