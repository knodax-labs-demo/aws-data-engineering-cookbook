#!/bin/bash
 
set -e
 
if [ ! -f env.sh ]; then
  echo "env.sh not found. Please create env.sh before running this script."
  exit 1
fi
 
source env.sh
 
echo "Active Data Pipeline Environment"
echo "--------------------------------"
echo "Account ID: $ACCOUNT_ID"
echo "Region: $REGION"
echo "Project Name: $PROJECT_NAME"
echo "Bucket Name: $BUCKET_NAME"
echo "Raw Prefix: $RAW_PREFIX"
echo "Processed Prefix: $PROCESSED_PREFIX"
echo "Curated Prefix: $CURATED_PREFIX"
echo "Glue Database: $GLUE_DATABASE"
echo "Glue Crawler: $GLUE_CRAWLER"
echo "Glue Job: $GLUE_JOB"
echo "IAM Role Name: $IAM_ROLE_NAME"
echo "Athena Results Prefix: $ATHENA_RESULTS_PREFIX"
echo "Log Prefix: $LOG_PREFIX"
