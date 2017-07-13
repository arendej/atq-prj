**ATQ-PRJ - README.md**

*In order to run this project..*

1) gen-hosts.yml will generate the ansible-hosts file for the subsequent tasks.
2) from the atq-prj path, *ansible-playbook -i .hosts task1a.yml* will run the task to create the LXC containers.
2b) from the atq-prj path, *ansible-playbook -i hosts root-ssh-3ct.yml -vv* will inject necessary ssh things into the LXC containers.
3) from the atq-prj path, *ansible-playbook -i .hosts task1b.yml* will run the task to install apache, and maybe something more later.
4) from the atq-prj path, *ansible-playbook -i .hosts task2a.yml* will do all which includes /etc/hosts setup from templates.
5) from the atq-prj path, *ansible-playbook -i .hosts task2b.yml* will do all which includes NTPd setup from templates.



*System Requirements*
The Ansible control machine must have the following installed..

* pip (sudo yum install pip -y; sudo pip install --upgrade pip)
* requests (sudo pip install requests)
* proxmoxer (sudo pip install proxmoxer)

* NOTE that without the above, you will get https 500 errors or unauthorization errors for plays that call proxmox module in ansible.

* This particular deployment is specific to my enironment with a pre-determined set of IP addresses and hostnames... something to expand upon in a later edition.
