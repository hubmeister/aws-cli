#!/bin/bash
# http://docs.aws.amazon.com/cli/latest/reference/ec2/describe-instances.html
# the --output-text does not work
#aws ec2 describe-instances --filters Name=tag-value,Values=INT-Web-22f7 --output-text
aws ec2 describe-instances --filters Name=tag-value,Values=INT-Web-22f7 | jq '.Reservations[].Instances[].Tags[]'
# or
aws ec2 describe-instances --filters Name=tag-value,Values=INT-Web-22f7 --output text
# or
aws ec2 describe-instances --filters Name=tag-value,Values=INT-Web-22f7 --output table
