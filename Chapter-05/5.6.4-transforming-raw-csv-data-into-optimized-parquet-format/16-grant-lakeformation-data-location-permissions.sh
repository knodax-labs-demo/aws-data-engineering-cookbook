aws lakeformation grant-permissions   --principal DataLakePrincipalIdentifier=arn:aws:iam::$ACCOUNT_ID:role/$ROLE_NAME   --permissions DATA_LOCATION_ACCESS   --resource '{
    "DataLocation": {
      "ResourceArn": "arn:aws:s3:::'"$BUCKET_NAME"'"
    }
  }'
