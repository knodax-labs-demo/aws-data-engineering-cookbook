aws emr create-cluster   --name $CLUSTER_NAME   --release-label emr-7.0.0   --applications Name=Spark Name=Hive   --instance-type m5.xlarge   --instance-count 3   --use-default-roles   --ec2-attributes KeyName=$KEY_NAME   --configurations '[
    {
      "Classification":"spark-hive-site",
      "Properties":{
        "hive.metastore.client.factory.class":"com.amazonaws.glue.catalog.metastore.AWSGlueDataCatalogHiveClientFactory"
      }
    },
    {
      "Classification":"hive-site",
      "Properties":{
        "hive.metastore.client.factory.class":"com.amazonaws.glue.catalog.metastore.AWSGlueDataCatalogHiveClientFactory"
      }
    }
  ]'   --log-uri s3://$RAW_BUCKET/emr-logs/   --region $REGION
