cat > env.sh <<'EOF'
export ACCOUNT_ID=$(aws sts get-caller-identity   --query Account   --output text)

export REGION=us-east-1

export RAW_BUCKET=eventbridge-raw-data-$ACCOUNT_ID
export CURATED_BUCKET=eventbridge-curated-data-$ACCOUNT_ID

export FUNCTION_NAME=EventBridgeETLProcessor
export ROLE_NAME=EventBridgeETLRole
export RULE_NAME=S3DataTransformationRule
EOF
