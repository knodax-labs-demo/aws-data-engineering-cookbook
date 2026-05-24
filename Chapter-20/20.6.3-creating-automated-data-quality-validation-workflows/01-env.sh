cat > env.sh <<'EOF'
export ACCOUNT_ID=$(aws sts get-caller-identity   --query Account   --output text)

export REGION=us-east-1

export RAW_BUCKET=de-dataquality-raw-demo-$ACCOUNT_ID
export CURATED_BUCKET=de-dataquality-curated-demo-$ACCOUNT_ID

export DATABASE_NAME=data_quality_demo_db
export TABLE_NAME=sales_data_clean

export CRAWLER_NAME=sales-quality-crawler
export GLUE_JOB_NAME=sales-data-quality-job

export GLUE_ROLE=AWSGlueServiceRole
export GLUE_ROLE_ARN=arn:aws:iam::$ACCOUNT_ID:role/$GLUE_ROLE

export SNS_TOPIC_NAME=data-quality-alerts
EOF
