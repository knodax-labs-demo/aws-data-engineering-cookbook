KMS_KEY_ID=$(aws kms create-key   --description "KMS key for immutable audit logs"   --query 'KeyMetadata.KeyId'   --output text)
