aws emr describe-cluster   --cluster-id $CLUSTER_ID   --query 'Cluster.Status.State'   --region $REGION
