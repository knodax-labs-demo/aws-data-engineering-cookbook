cat > env.sh <<'EOF'
export ACCOUNT_ID=$(aws sts get-caller-identity   --query Account   --output text)

export REGION=us-east-1

export RAW_BUCKET=de-recommendation-raw-demo-$ACCOUNT_ID
export CURATED_BUCKET=de-recommendation-curated-demo-$ACCOUNT_ID

export DATABASE_NAME=recommendation_demo_db
export TABLE_NAME=user_interactions

export CRAWLER_NAME=recommendation-data-crawler
export GLUE_JOB_NAME=recommendation-etl-job

export GLUE_ROLE=AWSGlueServiceRole
EOF
