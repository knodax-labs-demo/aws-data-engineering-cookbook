SELECT
  query,
  is_diskbased,
  rows,
  bytes
FROM svl_query_summary
WHERE is_diskbased = 't'
ORDER BY bytes DESC;
