SELECT
  query,
  substring(querytxt,1,100) AS sql_text,
  total_exec_time/1000000 AS execution_seconds
FROM svl_qlog
ORDER BY total_exec_time DESC
LIMIT 10;
