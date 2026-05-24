ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
REGION=us-east-1
BUCKET_NAME=enterprise-lakehouse-$ACCOUNT_ID
