aws redshift describe-cluster-snapshots \
  --snapshot-identifier $SNAPSHOT_NAME \
  --query 'Snapshots[0].Status'
