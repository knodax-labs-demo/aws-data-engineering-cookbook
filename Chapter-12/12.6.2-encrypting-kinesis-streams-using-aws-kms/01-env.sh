cat > env.sh <<'EOF'
export AWS_REGION=us-east-1

export STREAM_NAME=encrypted-kinesis-stream

export KMS_ALIAS=alias/kinesis-stream-key
EOF
