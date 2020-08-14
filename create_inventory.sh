echo "[$1]" >> inventory
echo "Name=tag:Name,Values=$2"
aws ec2 describe-instances --query 'Reservations[*].Instances[*].PublicIpAddress'  --filters "Name=tag:Name,Values=$2" --output text >> inventory