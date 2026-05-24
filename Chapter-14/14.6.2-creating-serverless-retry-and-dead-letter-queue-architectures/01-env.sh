cat > env.sh <<'EOF'
export AWS_REGION=us-east-1

export MAIN_QUEUE_NAME=etl-main-queue
export DLQ_NAME=etl-dead-letter-queue

export FUNCTION_NAME=RetryDLQETLProcessor
export ROLE_NAME=RetryDLQETLRole
export POLICY_NAME=RetryDLQETLPolicy
EOF
