#!/bin/bash
# http://docs.aws.amazon.com/cli/latest/reference/ec2/describe-instances.html
# 
# replace the string following Values= with your instance name
aws ec2 describe-instances --filters Name=tag-value,Values=INT-Web-22f7 | jq '.Reservations[].Instances[].Tags[]'
# or
aws ec2 describe-instances --filters Name=tag-value,Values=INT-Web-22f7 --output text
# or
aws ec2 describe-instances --filters Name=tag-value,Values=INT-Web-22f7 --output table
