cat > env.sh <<'EOF'
export AWS_REGION=us-east-1

export STREAM_NAME=high-throughput-ingestion-stream
export INITIAL_SHARD_COUNT=2
export TARGET_SHARD_COUNT=4
EOF
