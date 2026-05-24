aws redshift describe-clusters \
  --cluster-identifier restored-redshift-cluster \
  --query 'Clusters[0].ClusterStatus'
