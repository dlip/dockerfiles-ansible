#!/bin/bash
set -e

cd /var/playbooks && ansible-playbook docker.yml --skip-tags='config'
