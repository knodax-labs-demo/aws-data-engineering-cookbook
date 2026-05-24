export AWS_REGION=us-east-1
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
 
export DATA_BUCKET=athena-projection-data-$ACCOUNT_ID
export ATHENA_RESULTS_BUCKET=athena-projection-results-$ACCOUNT_ID
 
export DATABASE_NAME=projectiondb
export TABLE_NAME=web_logs
