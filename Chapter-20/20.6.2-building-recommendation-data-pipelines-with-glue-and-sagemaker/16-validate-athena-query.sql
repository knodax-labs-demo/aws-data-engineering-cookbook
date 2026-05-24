SELECT
  event_type,
  COUNT(*) AS total_events
FROM recommendation_demo_db.user_interactions
GROUP BY event_type;
