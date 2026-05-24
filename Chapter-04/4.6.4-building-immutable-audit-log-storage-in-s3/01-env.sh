export REGION=us-east-1
 
export ACCOUNT_ID=$(aws sts get-caller-identity   --query Account   --output text)
 
export BUCKET_NAME=immutable-audit-logs-$ACCOUNT_ID
 
export KMS_ALIAS=alias/audit-log-key
