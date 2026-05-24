cat > env.sh <<'EOF'
export AWS_REGION=us-east-1

export STREAM_NAME=anomaly-detection-stream
export FUNCTION_NAME=telemetry-anomaly-detector

export REDSHIFT_CLUSTER=secure-redshift-cluster
export REDSHIFT_DB=analyticsdb
export REDSHIFT_TABLE=detected_anomalies
EOF
