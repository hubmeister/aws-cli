#!/bin/bash
#
aws ec2 describe-instances --query 'Reservations[].Instances[].[InstanceId,PrivateIpAddress,Tags[?Key==`opsworks:stack`]|[0].Value,State.Name]' --output text 
