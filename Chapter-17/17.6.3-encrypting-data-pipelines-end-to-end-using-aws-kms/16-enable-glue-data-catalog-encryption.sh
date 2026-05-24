aws glue put-data-catalog-encryption-settings   --data-catalog-encryption-settings '{
    "EncryptionAtRest": {
      "CatalogEncryptionMode": "SSE-KMS",
      "SseAwsKmsKeyId": "'"$KMS_KEY_ID"'"
    }
  }'   --region $REGION
