export KEY_ID=$(aws kms create-key   --description "Redshift encryption key"   --query 'KeyMetadata.KeyId'   --output text)
