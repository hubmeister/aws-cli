#!/bin/bash
# get instances
#aws ec2 describe-instances --query 'Reservations[].Instances[].[InstanceId,PrivateIpAddress,Tags[?Key==`opsworks:stack`]|[0].Value,State.Name]' --output text | sed 's/ //g'|awk '{print $1","$2","$3","$4}' > Instance-IP-with-stack-name
aws ec2 describe-instances --query 'Reservations[].Instances[].[InstanceId,PrivateIpAddress,Tags[?Key==`opsworks:stack`]|[0].Value,State.Name]' --output text 
