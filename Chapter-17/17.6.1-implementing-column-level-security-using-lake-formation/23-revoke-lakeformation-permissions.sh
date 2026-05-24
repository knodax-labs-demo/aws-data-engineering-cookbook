aws lakeformation revoke-permissions   --principal DataLakePrincipalIdentifier=arn:aws:iam::$ACCOUNT_ID:role/$ANALYST_ROLE   --permissions SELECT   --resource '{
    "TableWithColumns": {
      "DatabaseName": "'"$DATABASE_NAME"'",
      "Name": "'"$TABLE_NAME"'",
      "ColumnNames": [
        "employee_id",
        "employee_name",
        "department"
      ]
    }
  }'   --region $REGION
