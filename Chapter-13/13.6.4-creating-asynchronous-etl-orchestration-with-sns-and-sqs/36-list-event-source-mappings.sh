aws lambda list-event-source-mappings   --function-name $FUNCTION_NAME   --query 'EventSourceMappings[0].UUID'   --output text   --region $REGION
