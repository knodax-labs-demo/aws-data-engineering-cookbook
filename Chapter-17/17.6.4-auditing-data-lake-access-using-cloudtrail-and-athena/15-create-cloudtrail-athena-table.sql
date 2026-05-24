CREATE EXTERNAL TABLE IF NOT EXISTS $ATHENA_DATABASE.$ATHENA_TABLE (
  eventVersion STRING,
  userIdentity STRUCT<
    type:STRING,
    principalId:STRING,
    arn:STRING,
    accountId:STRING,
    accessKeyId:STRING,
    userName:STRING
  >,
  eventTime STRING,
  eventSource STRING,
  eventName STRING,
  awsRegion STRING,
  sourceIPAddress STRING,
  userAgent STRING,
  requestParameters STRING,
  responseElements STRING,
  additionalEventData STRING,
  requestID STRING,
  eventID STRING,
  resources ARRAY<STRUCT<
    ARN:STRING,
    accountId:STRING,
    type:STRING>>,
  eventType STRING,
  apiVersion STRING,
  readOnly STRING,
  recipientAccountId STRING,
  serviceEventDetails STRING,
  sharedEventID STRING,
  vpcEndpointId STRING
)
PARTITIONED BY (
  region STRING,
  year STRING,
  month STRING,
  day STRING
)
ROW FORMAT SERDE 'org.apache.hive.hcatalog.data.JsonSerDe'
STORED AS INPUTFORMAT
  'com.amazon.emr.cloudtrail.CloudTrailInputFormat'
OUTPUTFORMAT
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION 's3://$CLOUDTRAIL_BUCKET/AWSLogs/$ACCOUNT_ID/CloudTrail/';
