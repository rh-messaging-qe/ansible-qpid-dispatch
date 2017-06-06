# Qpid Dispatch - Ansible playbook
[![Build Status](https://travis-ci.org/enkeys/ansible-qpid-dispatch.svg?branch=master)](https://travis-ci.org/enkeys/ansible-qpid-dispatch)
[![GitHub Issues](https://img.shields.io/github/issues/enkeys/ansible-qpid-dispatch.svg)](https://github.com/enkeys/ansible-qpid-dispatch/issues)
[![GitHub Issues](https://img.shields.io/github/issues-pr/enkeys/ansible-qpid-dispatch.svg)](https://github.com/enkeys/ansible-qpid-dispatch/pulls)
![Contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

Install and configure qpid-dispatch.

## Features
* Supports CentOS and RHEL servers.

## Requirements
There is no requirements, just Ansible.

## Tests
For testing we use the [provision_docker](https://github.com/chrismeyersfsu/provision_docker) playbook.

### How to run tests
```bash
$ cd test && make all
```
