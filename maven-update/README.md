# Maven-Update

Automatically update Maven dependencies once a week.

* `git-url`: *Required.* URL of your Git-repository
* `git-branch`: *Required.* Branch to be updated
* `git-username`: *Required.* User to access the repository
* `git-password`: *Required.* Password to access the repository

```bash
fly -t target set-pipeline -p maven-update \
--var 'git-url=xxxx' --var 'git-branch=xxxx' \
--var 'git-username=xxxx' --var 'git-password=xxxx'
```