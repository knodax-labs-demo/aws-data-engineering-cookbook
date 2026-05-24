SELECT
  eventtime,
  eventname,
  sourceipaddress
FROM cloudtrail_audit_db.cloudtrail_logs
WHERE eventsource = 's3.amazonaws.com'
ORDER BY eventtime DESC;
