KEY_ID=$(aws kms list-keys   --query 'Keys[0].KeyId'   --output text)
