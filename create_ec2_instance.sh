
MyServerID=$(aws ec2 run-instances --image-id $(cat $1) --count $2 --instance-type $3 --key-name $4 --security-group-ids sg-002c634aa88399f4f --query 'Instances[0].InstanceId' --output text)
aws ec2 create-tags --resources $MyServerID --tags Key=Name,Value=Test
echo 