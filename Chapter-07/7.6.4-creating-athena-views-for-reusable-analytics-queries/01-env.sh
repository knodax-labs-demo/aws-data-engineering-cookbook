export AWS_REGION=us-east-1
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
 
export DATA_BUCKET=athena-view-data-$ACCOUNT_ID
export ATHENA_RESULTS_BUCKET=athena-view-results-$ACCOUNT_ID
 
export DATABASE_NAME=viewdb
export TABLE_NAME=sales_data
export VIEW_NAME=regional_sales_summary
