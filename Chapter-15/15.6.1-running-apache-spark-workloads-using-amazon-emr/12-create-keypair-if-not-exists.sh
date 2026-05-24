aws ec2 describe-key-pairs   --key-names $KEY_NAME   --region $REGION >/dev/null 2>&1

if [ $? -ne 0 ]; then
  aws ec2 create-key-pair     --key-name $KEY_NAME     --query 'KeyMaterial'     --output text     --region $REGION > ${KEY_NAME}.pem

  chmod 400 ${KEY_NAME}.pem

  echo "Created key pair: $KEY_NAME"
else
  echo "Key pair already exists: $KEY_NAME"
fi
