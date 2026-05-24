aws s3api put-bucket-encryption   --bucket $REDSHIFT_LOG_BUCKET   --server-side-encryption-configuration '{
    "Rules":[{
      "ApplyServerSideEncryptionByDefault":{
        "SSEAlgorithm":"AES256"
      }
    }]
  }'
