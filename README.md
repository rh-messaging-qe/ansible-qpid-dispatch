# Qpid Dispatch - Ansible playbook
[![Build Status](https://travis-ci.org/rh-messaging-qe/ansible-qpid-dispatch.svg?branch=master)](https://travis-ci.org/rh-messaging-qe/ansible-qpid-dispatch)
[![GitHub Issues](https://img.shields.io/github/issues/rh-messaging-qe/ansible-qpid-dispatch.svg)](https://github.com/rh-messaging-qe/ansible-qpid-dispatch/issues)
[![GitHub Issues](https://img.shields.io/github/issues-pr/rh-messaging-qe/ansible-qpid-dispatch.svg)](https://github.com/rh-messaging-qe/ansible-qpid-dispatch/pulls)
![Contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

Install and configure qpid-dispatch.

## Features
* Setup

## Supported
* Supports CentOS 7 and RHEL 7 servers. (CentOS 6 and RHEL 6 don't have solved dependencies for libwebsockets)

## Requirements
Epel on CentOS or added repos for qpid-dispatch on RHEL.

## Tests
For testing we use the [provision_docker](https://github.com/chrismeyersfsu/provision_docker) playbook.

### Requirements
* docker_host (by default on localhost)

### How to run tests
```bash
$ cd test && make all
```
