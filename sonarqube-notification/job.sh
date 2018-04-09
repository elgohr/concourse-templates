#!/usr/bin/env sh
set -e

echo -n 'New sonar result for ' > output/slack_message
gron sonar-results/result.json \
| grep key \
| awk '{split($0,a,"= "); print a[2]}' \
| sed -e 's/;//g' \
| sed -e 's/"//g' >> output/slack_message

gron sonar-results/result.json \
| grep measures \
| grep -v periods \
| grep -v "\[\]" \
| grep -v {} \
| awk '{split($0,a,"]."); print a[2]}' \
| sed -e 's/value =/:/g' \
| tr -d '\n' \
| sed -e 's/metric =/\n/g' \
| sed -e 's/;//g' \
| sed -e 's/"//g' >> output/slack_message
