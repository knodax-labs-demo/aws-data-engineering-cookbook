KMS_KEY_ID=$(aws kms create-key   --description "KMS key for data lake encryption"   --query 'KeyMetadata.KeyId'   --output text)
