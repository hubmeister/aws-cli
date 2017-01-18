#!/bin/bash
aws elb describe-load-balancers | jq -c '.LoadBalancerDescriptions[] | [.LoadBalancerName, .Instances]' > get-elb-with-instance-id.output
