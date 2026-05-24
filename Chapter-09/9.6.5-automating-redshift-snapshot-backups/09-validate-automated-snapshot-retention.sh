aws redshift describe-clusters \
  --cluster-identifier $REDSHIFT_CLUSTER \
  --query 'Clusters[0].AutomatedSnapshotRetentionPeriod'
