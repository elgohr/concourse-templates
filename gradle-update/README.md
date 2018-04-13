# Gradle-Update

Automatically update Gradle dependencies once a week.

* `git-url`: *Required.* URL of your Git-repository
* `git-branch`: *Required.* Branch to be updated
* `git-username`: *Required.* User to access the repository
* `git-password`: *Required.* Password to access the repository
* `gradle-parameters`: *Optional.* If your builds needs to have special parameters, add them here

```bash
fly -t target set-pipeline -p gradle-update -c pipeline.yml \
--var 'git-url=xxxx' --var 'git-branch=xxxx' \
--var 'git-username=xxxx' --var 'git-password=xxxx' \
--var 'gradle-parameters=-Pproxy_password=yyyy'
```
