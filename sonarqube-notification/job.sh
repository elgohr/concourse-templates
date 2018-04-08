#!/usr/bin/env sh

ls sonar-results
gron sonar-results/result.json

gron sonar-results/result.json \
| grep measures \
| grep -v periods \
| grep -v "\[\]" \
| grep -v {} \
| awk '{split($0,a,"]."); print a[2]}'