#!/bin/bash
# get instances of t2.micro
aws ec2 describe-instances --filters "Name=instance-type,Values=t2.micro" --output text
