aws glue create-security-configuration   --name $GLUE_SECURITY_CONFIG   --encryption-configuration '{
    "S3Encryption": [
      {
        "S3EncryptionMode": "SSE-KMS",
        "KmsKeyArn": "arn:aws:kms:'"$AWS_REGION"':'"$ACCOUNT_ID"':key/'"$KMS_KEY_ID"'"
      }
    ],
    "CloudWatchEncryption": {
      "CloudWatchEncryptionMode": "SSE-KMS",
      "KmsKeyArn": "arn:aws:kms:'"$AWS_REGION"':'"$ACCOUNT_ID"':key/'"$KMS_KEY_ID"'"
    },
    "JobBookmarksEncryption": {
      "JobBookmarksEncryptionMode": "CSE-KMS",
      "KmsKeyArn": "arn:aws:kms:'"$AWS_REGION"':'"$ACCOUNT_ID"':key/'"$KMS_KEY_ID"'"
    }
  }'
