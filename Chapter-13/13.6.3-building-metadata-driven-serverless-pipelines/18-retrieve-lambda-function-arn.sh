FUNCTION_ARN=$(aws lambda get-function   --function-name $FUNCTION_NAME   --query 'Configuration.FunctionArn'   --output text)
