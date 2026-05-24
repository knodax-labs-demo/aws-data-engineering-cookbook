cat > env.sh <<'EOF'
export AWS_REGION=us-east-1

export STREAM_NAME=lambda-consumer-stream
export FUNCTION_NAME=kinesis-lambda-consumer
export ROLE_NAME=kinesis-lambda-consumer-role
export POLICY_NAME=kinesis-lambda-consumer-policy
EOF
