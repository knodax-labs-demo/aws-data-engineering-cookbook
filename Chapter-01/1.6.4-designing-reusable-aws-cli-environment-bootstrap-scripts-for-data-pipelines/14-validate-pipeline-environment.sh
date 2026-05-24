#!/bin/bash
 
set -e
 
source env.sh
 
echo "Validating S3 pipeline environment..."
 
aws s3 ls s3://$BUCKET_NAME/$RAW_PREFIX/ > /dev/null
aws s3 ls s3://$BUCKET_NAME/$PROCESSED_PREFIX/ > /dev/null
aws s3 ls s3://$BUCKET_NAME/$CURATED_PREFIX/ > /dev/null
aws s3 ls s3://$BUCKET_NAME/$ATHENA_RESULTS_PREFIX/ > /dev/null
aws s3 ls s3://$BUCKET_NAME/$LOG_PREFIX/ > /dev/null
 
echo "Validation completed successfully."
