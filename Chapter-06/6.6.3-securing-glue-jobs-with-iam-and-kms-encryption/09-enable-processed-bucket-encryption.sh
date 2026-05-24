aws s3api put-bucket-encryption   --bucket $PROCESSED_BUCKET   --server-side-encryption-configuration '{
    "Rules": [
      {
        "ApplyServerSideEncryptionByDefault": {
          "SSEAlgorithm": "aws:kms",
          "KMSMasterKeyID": "'"$KMS_KEY_ID"'"
        }
      }
    ]
  }'
