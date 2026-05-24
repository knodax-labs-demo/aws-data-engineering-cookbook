SELECT
  eventtime,
  useridentity.username,
  eventsource,
  eventname,
  sourceipaddress
FROM cloudtrail_audit_db.cloudtrail_logs
ORDER BY eventtime DESC
LIMIT 20;
