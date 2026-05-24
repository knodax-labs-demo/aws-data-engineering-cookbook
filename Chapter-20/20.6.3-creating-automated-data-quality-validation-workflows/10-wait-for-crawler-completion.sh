while true; do
  STATUS=$(aws glue get-crawler     --name $CRAWLER_NAME     --query 'Crawler.State'     --output text     --region $REGION)

  echo "Crawler Status: $STATUS"

  if [ "$STATUS" = "READY" ]; then
    break
  fi

  sleep 15
done
