export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
export REGION=us-east-1
export BUCKET_NAME=intelligent-tiering-lake-$ACCOUNT_ID
export OBJECT_NAME=analytics-dataset.csv
