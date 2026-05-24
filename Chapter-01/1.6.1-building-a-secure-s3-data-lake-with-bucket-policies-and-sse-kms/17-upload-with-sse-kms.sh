aws s3 cp sales.csv s3://$BUCKET_NAME/raw/   --sse aws:kms   --sse-kms-key-id $KMS_KEY_ARN
