aws s3api create-bucket   --bucket $DESTINATION_BUCKET   --region $SECONDARY_REGION   --create-bucket-configuration LocationConstraint=$SECONDARY_REGION
