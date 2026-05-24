aws s3api put-object --bucket $BUCKET_NAME --key $RAW_PREFIX/
aws s3api put-object --bucket $BUCKET_NAME --key $PROCESSED_PREFIX/
aws s3api put-object --bucket $BUCKET_NAME --key $CURATED_PREFIX/
aws s3api put-object --bucket $BUCKET_NAME --key $ATHENA_RESULTS_PREFIX/
aws s3api put-object --bucket $BUCKET_NAME --key $LOG_PREFIX/
