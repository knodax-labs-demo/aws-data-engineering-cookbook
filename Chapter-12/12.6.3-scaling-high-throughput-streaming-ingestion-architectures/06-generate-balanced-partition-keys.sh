for i in {1..20}
do
  aws kinesis put-record     --stream-name $STREAM_NAME     --partition-key "device-$i"     --data "{\"device_id\":\"device-$i\",\"metric_value\":$i}"
done
