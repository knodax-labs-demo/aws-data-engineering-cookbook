aws ec2 create-vpc-endpoint   --vpc-id $VPC_ID   --service-name com.amazonaws.$REGION.s3   --vpc-endpoint-type Gateway   --route-table-ids $ROUTE_TABLE_ID
