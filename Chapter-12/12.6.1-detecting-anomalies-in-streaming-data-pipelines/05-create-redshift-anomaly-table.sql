CREATE TABLE detected_anomalies (
    device_id VARCHAR(100),
    metric_value DECIMAL(10,2),
    anomaly_status VARCHAR(50),
    event_time TIMESTAMP
);
