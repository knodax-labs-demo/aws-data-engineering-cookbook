aws lakeformation grant-permissions   --principal DataLakePrincipalIdentifier=$ROLE_ARN   --permissions DESCRIBE CREATE_TABLE ALTER   --resource '{
    "Database": {
      "Name": "churn_db"
    }
  }'
