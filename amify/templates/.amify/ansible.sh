#!/usr/bin/env bash
set -euo pipefail

ansible-playbook {{ original_playbook_name }}.amfy.{{ project_name }}.yml \
    --inventory={{ original_playbook_name }}.amfy.{{ project_name }}.ini \
    --ssh-common-args='-F ./.amify/ssh.cfg';
