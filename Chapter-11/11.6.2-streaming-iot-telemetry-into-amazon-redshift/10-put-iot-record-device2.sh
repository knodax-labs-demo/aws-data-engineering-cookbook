aws kinesis put-record   --stream-name $STREAM_NAME   --partition-key device2   --data '{"device_id":"sensor-102","temperature":25.7,"humidity":40.5,"event_time":"2026-05-15T10:01:00"}'
