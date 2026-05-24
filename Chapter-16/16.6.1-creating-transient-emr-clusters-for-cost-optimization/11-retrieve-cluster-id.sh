CLUSTER_ID=$(aws emr list-clusters   --active   --query 'Clusters[0].Id'   --output text   --region $REGION)
