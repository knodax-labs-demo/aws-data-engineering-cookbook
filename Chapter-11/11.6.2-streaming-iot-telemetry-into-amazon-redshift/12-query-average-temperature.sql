SELECT
    device_id,
    AVG(temperature) AS avg_temperature
FROM iot_telemetry
GROUP BY device_id;
