KMS_KEY_ID=$(aws kms list-keys   --region $REGION   --query 'Keys[0].KeyId'   --output text)
