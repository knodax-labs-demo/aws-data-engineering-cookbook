export REGION=us-east-1
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
export BUCKET_NAME=compliant-data-lake-${ACCOUNT_ID}
export KMS_ALIAS=alias/data-lake-key
