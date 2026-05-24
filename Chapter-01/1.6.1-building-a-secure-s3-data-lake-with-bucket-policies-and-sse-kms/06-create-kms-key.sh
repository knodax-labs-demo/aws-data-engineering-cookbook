KMS_KEY_ID=$(aws kms create-key   --description "Data lake encryption key"   --policy file://kms-policy.json   --query 'KeyMetadata.KeyId'   --output text)
