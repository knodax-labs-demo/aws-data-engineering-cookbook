aws s3api list-object-versions   --bucket "$LOG_BUCKET"   --query 'Versions[].{Key:Key,VersionId:VersionId}'   --output json > versions.json
