aws lakeformation revoke-permissions   --principal DataLakePrincipalIdentifier=arn:aws:iam::$ACCOUNT_ID:role/$ENGINEER_ROLE   --permissions ALL   --resource '{
    "Table": {
      "DatabaseName": "'"$DATABASE_NAME"'",
      "Name": "'"$TABLE_NAME"'"
    }
  }'   --region $REGION
