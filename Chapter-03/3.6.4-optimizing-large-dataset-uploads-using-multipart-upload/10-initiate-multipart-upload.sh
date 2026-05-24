UPLOAD_ID=$(aws s3api create-multipart-upload   --bucket $BUCKET_NAME   --key $OBJECT_NAME   --query UploadId   --output text)
