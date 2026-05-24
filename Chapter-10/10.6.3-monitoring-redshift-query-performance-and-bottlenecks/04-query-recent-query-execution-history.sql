SELECT
  query,
  userid,
  starttime,
  endtime,
  datediff(seconds,starttime,endtime) AS runtime_seconds
FROM stl_query
ORDER BY starttime DESC
LIMIT 20;
