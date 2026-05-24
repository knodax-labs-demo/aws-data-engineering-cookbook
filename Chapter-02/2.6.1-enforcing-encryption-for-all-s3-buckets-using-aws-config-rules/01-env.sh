ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
REGION=us-east-1
CONFIG_BUCKET=config-bucket-$ACCOUNT_ID
TEST_BUCKET=unencrypted-data-lake-$ACCOUNT_ID
