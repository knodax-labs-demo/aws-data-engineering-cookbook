cat > env.sh <<'EOF'
export AWS_REGION=us-east-1

export STREAM_NAME=iot-telemetry-stream
export FIREHOSE_NAME=iot-redshift-firehose

export REDSHIFT_CLUSTER=secure-redshift-cluster
export REDSHIFT_DB=analyticsdb
export REDSHIFT_USER=adminuser

export S3_BUCKET=iot-redshift-staging-$RANDOM

export REDSHIFT_TABLE=iot_telemetry
EOF
