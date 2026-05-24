aws kinesis put-record   --stream-name $STREAM_NAME   --partition-key sensor1   --data '{"device_id":"sensor-101","metric_value":45,"event_time":"2026-05-15T10:00:00"}'
