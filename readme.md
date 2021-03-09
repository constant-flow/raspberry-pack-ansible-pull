# Raspberry-Pack: Ansible-Pull

This [Raspberry-Pack](https://github.com/constant-flow/raspberry-pack) is configurable to pull from a git repo (environment variable: `ANSIBLE_PULL_REPOSITORY`) with an adjustable refresh schedule (environment variable: `ANSIBLE_PULL_CRON`)

The specific playbook can be defined with the `ANSIBLE_PULL_PLAYBOOK_PATH` variable

## Refreshing the playbook

- **Restart**: A service is setup to pull every restart of the raspberry to most recent playbook provided on the repository
- **Cron job**: An adjustable schedule pulls the playbook every now and then (environment variable: `ANSIBLE_PULL_CRON`)
