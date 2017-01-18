#!/bin/bash
aws ec2 describe-instances --query 'Reservations[*].Instances[*].[Placement.AvailabilityZone, State.Name, InstanceId,{"Key": "Name"} ]' --output text
