#!/bin/bash
 
set -e
 
source env.sh
 
echo "Deleting objects from bucket: $BUCKET_NAME"
aws s3 rm s3://$BUCKET_NAME --recursive
 
echo "Deleting bucket: $BUCKET_NAME"
aws s3api delete-bucket   --bucket $BUCKET_NAME   --region $REGION
 
echo "Cleanup completed."
