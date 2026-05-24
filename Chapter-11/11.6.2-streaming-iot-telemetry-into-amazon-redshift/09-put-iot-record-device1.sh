aws kinesis put-record   --stream-name $STREAM_NAME   --partition-key device1   --data '{"device_id":"sensor-101","temperature":22.5,"humidity":45.1,"event_time":"2026-05-15T10:00:00"}'
