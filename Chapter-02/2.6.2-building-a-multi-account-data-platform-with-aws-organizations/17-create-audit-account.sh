export AUDIT_REQUEST_ID=$(aws organizations create-account   --email "$AUDIT_EMAIL"   --account-name "$AUDIT_ACCOUNT_NAME"   --query 'CreateAccountStatus.Id'   --output text)
