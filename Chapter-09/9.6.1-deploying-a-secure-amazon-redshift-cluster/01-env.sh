cat > env.sh <<'EOF'
export AWS_REGION=us-east-1
 
export REDSHIFT_CLUSTER=secure-redshift-cluster
export REDSHIFT_DB=analyticsdb
export REDSHIFT_USER=adminuser
export REDSHIFT_PASSWORD='StrongPassword123!'
 
export REDSHIFT_NODE_TYPE=ra3.large
export REDSHIFT_CLUSTER_TYPE=single-node
 
export REDSHIFT_SUBNET_GROUP=redshift-private-subnet-group
export REDSHIFT_SG=redshift-security-group
 
export REDSHIFT_IAM_ROLE=RedshiftS3AccessRole
export REDSHIFT_LOG_BUCKET=secure-redshift-logs-$RANDOM
export KMS_ALIAS=alias/redshift-kms-key
EOF
