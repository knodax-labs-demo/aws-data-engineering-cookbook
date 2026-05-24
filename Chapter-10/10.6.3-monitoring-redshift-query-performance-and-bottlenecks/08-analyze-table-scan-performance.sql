SELECT
  query,
  rows,
  bytes,
  label
FROM svl_scan
ORDER BY bytes DESC
LIMIT 10;
