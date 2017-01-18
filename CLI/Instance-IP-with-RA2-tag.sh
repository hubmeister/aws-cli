#!/bin/bash
#
aws ec2 describe-instances --query 'Reservations[].Instances[].[InstanceId,PrivateIpAddress,Tags[?Key==`RA2`]|[0].Value,State.Name]' --output text 
