aws s3api put-bucket-versioning   --bucket $SOURCE_BUCKET   --versioning-configuration Status=Enabled   --region $PRIMARY_REGION
 
aws s3api put-bucket-versioning   --bucket $DESTINATION_BUCKET   --versioning-configuration Status=Enabled   --region $SECONDARY_REGION
