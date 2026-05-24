aws lakeformation grant-permissions   --principal DataLakePrincipalIdentifier=arn:aws:iam::$ACCOUNT_ID:role/$ANALYST_ROLE   --permissions SELECT   --resource '{
    "Table": {
      "DatabaseName": "'"$DATABASE_NAME"'",
      "Name": "'"$TABLE_NAME"'"
    }
  }'   --region $REGION
