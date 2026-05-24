export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
 
export PRIMARY_REGION=us-east-1
export SECONDARY_REGION=us-west-2
 
export SOURCE_BUCKET=primary-data-lake-$ACCOUNT_ID
export DESTINATION_BUCKET=replica-data-lake-$ACCOUNT_ID
 
export ROLE_NAME=S3ReplicationRole
