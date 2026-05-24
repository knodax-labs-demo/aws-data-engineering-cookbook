ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
REGION=us-east-1
LOG_BUCKET=centralized-log-bucket-${ACCOUNT_ID}
