export REGION=us-east-1
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
export SPILL_BUCKET=athena-dynamodb-spill-$ACCOUNT_ID
