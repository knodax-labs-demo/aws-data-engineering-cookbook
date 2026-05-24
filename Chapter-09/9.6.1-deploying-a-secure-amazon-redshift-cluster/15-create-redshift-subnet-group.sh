aws redshift create-cluster-subnet-group   --cluster-subnet-group-name   $REDSHIFT_SUBNET_GROUP   --description "Private Redshift subnets"   --subnet-ids $SUBNET_IDS
