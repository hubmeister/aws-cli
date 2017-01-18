#!/bin/bash
# get instances with Instance ID, Name, IP, 
#
aws ec2 describe-instances --query 'Reservations[].Instances[].[InstanceId,PrivateIpAddress,Tags[?Key==`Name`].Value[]]' --output text > /tmp/Instance-IP-with-instance-name.output.`date "+20%y_%m_%d"`
