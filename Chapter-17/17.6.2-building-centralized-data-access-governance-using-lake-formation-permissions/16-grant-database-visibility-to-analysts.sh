aws lakeformation grant-permissions   --principal DataLakePrincipalIdentifier=arn:aws:iam::$ACCOUNT_ID:role/$ANALYST_ROLE   --permissions DESCRIBE   --resource '{
    "Database": {
      "Name": "'"$DATABASE_NAME"'"
    }
  }'   --region $REGION
