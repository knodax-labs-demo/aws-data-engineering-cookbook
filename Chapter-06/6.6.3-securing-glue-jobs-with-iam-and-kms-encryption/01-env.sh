export AWS_REGION=us-east-1
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
 
export RAW_BUCKET=secure-glue-raw-$ACCOUNT_ID
export PROCESSED_BUCKET=secure-glue-processed-$ACCOUNT_ID
 
export GLUE_ROLE_NAME=SecureGlueJobRole
export GLUE_JOB_NAME=secure-glue-job
export GLUE_SECURITY_CONFIG=secure-glue-security-config
 
export KMS_ALIAS=alias/glue-secure-key
