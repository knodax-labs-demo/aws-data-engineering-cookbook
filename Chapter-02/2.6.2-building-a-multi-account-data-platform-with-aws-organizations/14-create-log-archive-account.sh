export LOG_ARCHIVE_REQUEST_ID=$(aws organizations create-account   --email "$LOG_ARCHIVE_EMAIL"   --account-name "$LOG_ARCHIVE_ACCOUNT_NAME"   --query 'CreateAccountStatus.Id'   --output text)
