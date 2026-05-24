cat > env.sh <<'EOF'
export ACCOUNT_ID=$(aws sts get-caller-identity   --query Account   --output text)
export REGION=us-east-1

export RAW_BUCKET=async-etl-raw-$ACCOUNT_ID
export CURATED_BUCKET=async-etl-curated-$ACCOUNT_ID

export TOPIC_NAME=async-etl-topic
export QUEUE_NAME=async-etl-queue
export DLQ_NAME=async-etl-dlq

export FUNCTION_NAME=AsyncETLWorker
export ROLE_NAME=AsyncETLWorkerRole
export POLICY_NAME=AsyncETLWorkerPolicy
EOF
