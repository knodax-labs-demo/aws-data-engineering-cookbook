aws s3api create-bucket   --bucket $LOG_BUCKET   --region $REGION   --create-bucket-configuration LocationConstraint=$REGION
