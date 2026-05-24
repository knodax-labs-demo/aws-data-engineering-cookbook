aws s3api put-object --bucket $ARCHIVE_BUCKET --key raw/
aws s3api put-object --bucket $ARCHIVE_BUCKET --key processed/
aws s3api put-object --bucket $ARCHIVE_BUCKET --key curated/
aws s3api put-object --bucket $ARCHIVE_BUCKET --key logs/
aws s3api put-object --bucket $ARCHIVE_BUCKET --key backups/
