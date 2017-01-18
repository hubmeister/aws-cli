#!/bin/bash
aws elb describe-load-balancers | jq -c '.LoadBalancerDescriptions[] | [.LoadBalancerName, .Instances]' > /tmp/get-elb-with-instance-id.output
