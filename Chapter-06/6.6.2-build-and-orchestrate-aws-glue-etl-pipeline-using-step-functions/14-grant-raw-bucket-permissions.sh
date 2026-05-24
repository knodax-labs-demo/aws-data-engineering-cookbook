aws lakeformation grant-permissions   --principal DataLakePrincipalIdentifier=$ROLE_ARN   --permissions DATA_LOCATION_ACCESS   --resource '{
    "DataLocation": {
      "ResourceArn": "arn:aws:s3:::'"$RAW_BUCKET"'"
    }
  }'
