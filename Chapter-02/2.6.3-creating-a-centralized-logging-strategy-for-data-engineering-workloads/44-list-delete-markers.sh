aws s3api list-object-versions   --bucket "$LOG_BUCKET"   --query 'DeleteMarkers[].{Key:Key,VersionId:VersionId}'   --output json > delete-markers.json
