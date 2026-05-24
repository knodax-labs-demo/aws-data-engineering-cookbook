SELECT
  year,
  COUNT(*) AS total_events,
  SUM(event_value) AS total_value
FROM retention_analytics_db.historical_events
GROUP BY year
ORDER BY year;
