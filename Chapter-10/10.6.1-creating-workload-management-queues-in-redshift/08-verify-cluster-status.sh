aws redshift describe-clusters   --cluster-identifier $CLUSTER_ID   --query 'Clusters[0].ClusterStatus'   --region $REGION
