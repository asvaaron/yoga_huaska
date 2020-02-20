#!/usr/bin/env bash


# Python must ve installed in the remote host
# # apt-get install python2.7

# Add key-par to your ssh-agent
ssh-agent bash
ssh-add instace_name.pem


# Install ansible remotely in EC2 cloud server

# Not Verbose
ansible-playbook setup_project.yml -i hosts
# Verbose
ansible-playbook setup_project.yml -i hosts -vvv

# Sudo password same as introduced password
ansible-playbook setup_project.yml --ask-pass -i hosts -k -K -vvv


#ansible-playbook setup_project.yml --ask-pass -i hosts.yml

# Execute Ansible playbook
#ansible-playbook setup_ruby.yml -i hosts.yml

#ansible-playbook setup_ruby.yml --ask-sudo-pass --ask-pass -i hosts.yml -u developer

#ansible-playbook setup_ruby.yml --ask-sudo-pass -i hosts.yml -u developer

#Ping all the available host machines

ansible -i hosts -m ping all -u



