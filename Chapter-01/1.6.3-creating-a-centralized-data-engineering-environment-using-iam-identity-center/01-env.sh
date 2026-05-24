ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
REGION=us-east-1
IDENTITY_CENTER_INSTANCE_ARN=""
IDENTITY_STORE_ID=""
