cat > env.sh <<'EOF'
export REGION=us-east-1
 
export ACCOUNT_ID=$(aws sts get-caller-identity   --query Account   --output text)
 
export SPILL_BUCKET=athena-dynamodb-spill-$ACCOUNT_ID
 
export CLOUDTRAIL_BUCKET=cloudtrail-logs-$ACCOUNT_ID
 
export TRAIL_NAME=enterprise-audit-trail
 
export STACK_NAME=AthenaDynamoDBConnector
 
export ATHENA_CATALOG_NAME=dynamodb
EOF
