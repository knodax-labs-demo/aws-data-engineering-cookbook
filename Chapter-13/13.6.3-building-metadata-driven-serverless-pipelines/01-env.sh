cat > env.sh <<'EOF'
export REGION=us-east-1

export ACCOUNT_ID=$(aws sts get-caller-identity   --query Account   --output text)

export RAW_BUCKET=eventbridge-raw-data-$ACCOUNT_ID
export CURATED_BUCKET=eventbridge-curated-data-$ACCOUNT_ID
export TABLE_NAME=dataset-metadata-table
export FUNCTION_NAME=EventBridgeETLProcessor
export ROLE_NAME=EventBridgeETLRole
export RULE_NAME=S3DataTransformationRule

export LAMBDA_LOG_GROUP=/aws/lambda/$FUNCTION_NAME
EOF
