export AWS_REGION=us-east-1
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
 
export DATA_BUCKET=athena-dataset-$ACCOUNT_ID
export ATHENA_RESULTS_BUCKET=athena-results-$ACCOUNT_ID
 
export DATABASE_NAME=analyticsdb
export TABLE_NAME=sales_data
