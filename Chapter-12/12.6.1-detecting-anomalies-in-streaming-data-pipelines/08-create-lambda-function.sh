aws lambda create-function   --function-name $FUNCTION_NAME   --runtime python3.12   --handler lambda_function.lambda_handler   --zip-file fileb://function.zip   --role YOUR_LAMBDA_ROLE_ARN
