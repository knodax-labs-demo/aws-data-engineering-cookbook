cat > env.sh <<'EOF'
export AWS_REGION=us-east-1
 
export REDSHIFT_CLUSTER=secure-redshift-cluster
export REDSHIFT_DB=analyticsdb
export REDSHIFT_USER=adminuser
 
export REDSHIFT_IAM_ROLE=RedshiftS3AccessRole
 
export DATA_BUCKET=redshift-copy-demo-$RANDOM
export DATA_FILE=sales_data.csv
EOF
