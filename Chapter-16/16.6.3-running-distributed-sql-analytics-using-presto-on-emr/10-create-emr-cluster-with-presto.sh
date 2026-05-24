aws emr create-cluster   --name $CLUSTER_NAME   --release-label emr-7.0.0   --applications Name=Hadoop Name=Hive Name=Presto   --instance-type m5.xlarge   --instance-count 3   --use-default-roles   --ec2-attributes KeyName=$KEY_NAME   --configurations '[
    {
      "Classification":"presto-connector-hive",
      "Properties":{
        "hive.metastore":"glue"
      }
    }
  ]'   --log-uri s3://$RAW_BUCKET/emr-logs/   --region $REGION
