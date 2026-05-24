export AWS_REGION=us-east-1
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
 
export DATA_BUCKET=federated-athena-data-$ACCOUNT_ID
export ATHENA_RESULTS_BUCKET=federated-athena-results-$ACCOUNT_ID
 
export DATABASE_NAME=federateddb
export DYNAMODB_TABLE=CustomerOrders
