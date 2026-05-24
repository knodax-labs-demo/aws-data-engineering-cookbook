CREATE EXTERNAL TABLE IF NOT EXISTS $ATHENA_DATABASE.$ATHENA_TABLE (
  eventVersion STRING,
  eventTime STRING,
  eventSource STRING,
  eventName STRING,
  awsRegion STRING,
  sourceIPAddress STRING,
  userAgent STRING,
  requestParameters STRING,
  responseElements STRING,
  requestID STRING,
  eventID STRING,
  eventType STRING,
  recipientAccountId STRING
)
ROW FORMAT SERDE 'org.apache.hive.hcatalog.data.JsonSerDe'
LOCATION 's3://$CLOUDTRAIL_BUCKET/AWSLogs/$ACCOUNT_ID/CloudTrail/';
