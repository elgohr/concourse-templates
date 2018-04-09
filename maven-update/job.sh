#!/usr/bin/env sh
set -e

git clone repository output
cd output

mvn versions:update-parent \
&& mvn versions:use-latest-versions \
&& mvn versions:commit

git add .
git config --global user.email "generated@concourse-template.de"
git config --global user.name "Maven Update"
git commit -m "Update Maven dependencies"
