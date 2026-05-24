aws emr add-steps   --cluster-id "$CLUSTER_ID"   --steps file://presto-step.json   --region "$REGION"
