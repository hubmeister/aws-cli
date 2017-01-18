#!/bin/bash
aws ec2 describe-instances --filters Name=vpc-id,Values=vpc-bace76df --query 'Reservations[].Instances[].Tags[?Key==`Name`].Value[]'
