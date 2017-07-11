#!/bin/bash
# wrapper for my atq-prj project, uses Ansible.
#
# Ansible dependency files..
# - gen-hosts.yml, templates/genhosts.j2
# - task{1..2}{a..b}.yml
# - templates/etchost{1..3}.j2
# - templates/ntp1.j2
# - templates/ntp2-3.j2
# - plays/prox-build-ct{1..3}.yml
# - plays/start3-cts.yml
# - init_vars.yml
#
#



#step 1 - generate project inventory hosts file
ansible-playbook gen-hosts.yml -v

#step 2 - task1a.yml creates the lxc containers, and starts them
ansible-playbook -i hosts task1a.yml -v

#step 3 - give the 3 containers vim,ssh,sudo
ansible-playbook -i hosts root-ssh-3ct.yml -vv

#step 4 - install apache on containers via ansible & add html page.
ansible-playbook -i hosts task1b.yml -v

#step 5 - task2a.yml sets /etc/hosts files on containers
ansible-playbook -i hosts task2a.yml -v

#step 6 - task2b.yml sets the ntp.conf on the containers

#step 7 - all done.

