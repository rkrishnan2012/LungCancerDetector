# Launch an instance
#aws ec2 request-spot-fleet --spot-fleet-request-config file://config.json

# Get ip of instance and remove quotes
ip=`aws ec2 describe-instances --query 'Reservations[0].Instances[0].PublicIpAddress' | sed -e 's/^"//' -e 's/"$//'`

open "https://$ip:8888"

