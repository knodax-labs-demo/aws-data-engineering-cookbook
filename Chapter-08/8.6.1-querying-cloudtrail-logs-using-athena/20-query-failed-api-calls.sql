SELECT
  eventtime,
  eventsource,
  eventname,
  errorcode
FROM cloudtrail_audit_db.cloudtrail_logs
WHERE errorcode IS NOT NULL
ORDER BY eventtime DESC;
