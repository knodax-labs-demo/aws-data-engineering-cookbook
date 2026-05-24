export LOG_ARCHIVE_ACCOUNT_ID=$(aws organizations describe-create-account-status   --create-account-request-id "$LOG_ARCHIVE_REQUEST_ID"   --query 'CreateAccountStatus.AccountId'   --output text)
