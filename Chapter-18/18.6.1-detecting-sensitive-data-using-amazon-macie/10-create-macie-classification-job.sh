aws macie2 create-classification-job   --job-type ONE_TIME   --name $MACIE_JOB_NAME   --s3-job-definition '{
    "bucketDefinitions": [
      {
        "accountId": "'"$ACCOUNT_ID"'",
        "buckets": [
          "'"$DATA_BUCKET"'"
        ]
      }
    ]
  }'   --sampling-percentage 100   --region $REGION
