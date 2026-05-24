ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
REGION=us-east-1
ARCHIVE_BUCKET=data-archive-${ACCOUNT_ID}
