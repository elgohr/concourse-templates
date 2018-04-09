#!/usr/bin/env sh
set -e

cp concourse-template/gradle-update/init.gradle ~/.gradle/

git clone repository output
cd output

gradle useLatestVersions \
&& gradle useLatestVersionsCheck

git add .
git config --global user.email "generated@concourse-template.de"
git config --global user.name "Gradle Update"
git commit -m "Update Gradle dependencies"
