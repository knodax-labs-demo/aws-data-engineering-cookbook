aws cloudwatch get-metric-statistics \
  --namespace AWS/Redshift \
  --metric-name CPUUtilization \
  --dimensions Name=ClusterIdentifier,Value=$CLUSTER_ID \
  --statistics Average \
  --period 300 \
  --start-time $(date -u -d '1 hour ago' +%Y-%m-%dT%H:%M:%SZ) \
  --end-time $(date -u +%Y-%m-%dT%H:%M:%SZ) \
  --region $REGION
