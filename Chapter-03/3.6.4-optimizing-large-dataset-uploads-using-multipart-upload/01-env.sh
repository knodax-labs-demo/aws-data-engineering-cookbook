export REGION=us-east-1
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
export BUCKET_NAME=multipart-upload-demo-$ACCOUNT_ID
export OBJECT_NAME=large-dataset.bin
