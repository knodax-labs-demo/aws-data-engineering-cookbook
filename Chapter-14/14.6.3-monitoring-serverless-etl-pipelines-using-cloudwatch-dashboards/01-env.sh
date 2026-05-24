cat > env.sh <<'EOF'
export AWS_REGION=us-east-1

export FUNCTION_NAME=RetryDLQETLProcessor
export MAIN_QUEUE_NAME=etl-main-queue

export DASHBOARD_NAME=ServerlessETLDashboard
EOF
