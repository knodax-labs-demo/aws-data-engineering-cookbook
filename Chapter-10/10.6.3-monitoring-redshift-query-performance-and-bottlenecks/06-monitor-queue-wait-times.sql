SELECT
  query,
  service_class,
  total_queue_time/1000000 AS queue_seconds
FROM svl_query_metrics_summary
ORDER BY total_queue_time DESC
LIMIT 10;
