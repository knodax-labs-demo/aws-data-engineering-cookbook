for i in {1..1000}
do
  aws kinesis put-record     --stream-name $STREAM_NAME     --partition-key "device-$((i % 100))"     --data "{\"device_id\":\"device-$((i % 100))\",\"metric_value\":$i}"
done
