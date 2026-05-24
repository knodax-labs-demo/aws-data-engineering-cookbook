aws s3api head-object   --bucket $SOURCE_BUCKET   --key analytics-data.csv   --region $PRIMARY_REGION   --query ReplicationStatus
