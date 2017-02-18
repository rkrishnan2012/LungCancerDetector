# Launch an instance
#aws ec2 request-spot-fleet --spot-fleet-request-config file://config.json

# Get ip of instance and remove quotes
ip=`aws ec2 describe-instances --query 'Reservations[0].Instances[0].PublicIpAddress' | sed -e 's/^"//' -e 's/"$//'`

# ssh inside
ssh -D8081 -i p2rohit.pem ubuntu@$ip

