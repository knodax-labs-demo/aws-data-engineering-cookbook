aws lakeformation grant-permissions   --principal DataLakePrincipalIdentifier=arn:aws:iam::$ACCOUNT_ID:role/$ROLE_NAME   --permissions DESCRIBE CREATE_TABLE ALTER   --resource '{
    "Database": {
      "Name": "'"$DATABASE_NAME"'"
    }
  }'
