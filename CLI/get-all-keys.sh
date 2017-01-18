#!/bin/bash
aws iam list-users | jq -r '.Users[]|.UserName' | xargs -n 1 -I {} aws iam list-access-keys --user={} --output=text > get-all-keys.`date "+20%y_%m_%d"`
