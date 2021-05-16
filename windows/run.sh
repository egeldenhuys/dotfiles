#!/bin/bash

ansible-playbook --inventory hosts.yml playbooks/yubikey-ssh.yml
