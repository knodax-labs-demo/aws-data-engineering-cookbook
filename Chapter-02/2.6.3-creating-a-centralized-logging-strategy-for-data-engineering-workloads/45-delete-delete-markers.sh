aws s3api delete-objects   --bucket "$LOG_BUCKET"   --delete file://<(jq '{Objects: ., Quiet: false}' delete-markers.json)
