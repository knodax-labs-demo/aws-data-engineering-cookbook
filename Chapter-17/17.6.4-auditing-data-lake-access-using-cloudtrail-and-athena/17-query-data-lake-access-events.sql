SELECT
  eventtime,
  useridentity.username,
  eventname,
  sourceipaddress
FROM audit_logs_db.cloudtrail_logs
WHERE eventsource = 's3.amazonaws.com'
ORDER BY eventtime DESC
LIMIT 20;
