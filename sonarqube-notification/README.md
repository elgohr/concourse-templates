# Sonarqube-Notification

Get Sonarqube results and post them to Slack.

* `sonarqube-url`: *Required.* URL of your SonarQube instance e.g. `https://my-atlassian.com/sonar`.
* `sonarqube-token`: *Required.* [Security token](https://docs.sonarqube.org/display/SONAR/User+Token), which is used to connect to Sonarqube.
* `sonarqube-component`: *Required.* The component _key_ of your component. This is shown in the dashboard url as https://my-atlassian/sonar/dashboard?id=ComponentKey
* `slack-hook`: *Required.* The [slack hook](https://api.slack.com/incoming-webhooks#sending_messages)
* `slack-channel`: *Required.* The slack channel to post to.
