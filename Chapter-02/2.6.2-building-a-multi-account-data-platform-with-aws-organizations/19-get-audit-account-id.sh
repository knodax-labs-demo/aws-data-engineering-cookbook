export AUDIT_ACCOUNT_ID=$(aws organizations describe-create-account-status   --create-account-request-id "$AUDIT_REQUEST_ID"   --query 'CreateAccountStatus.AccountId'   --output text)
