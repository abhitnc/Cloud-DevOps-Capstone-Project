export AWS_PROFILE=linux
aws cloudformation update-stack \
  --stack-name $1 \
  --template-body file://$2 \
  --parameters file://$3 \
  --capabilities IAM