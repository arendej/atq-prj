**ATQ-PRJ - README.md**

*In order to run this project..*

1) gen-hosts.yml will generate the ansible-hosts file for the subsequent tasks.
2) from the atq-prj path, *ansible-playbook -i .hosts create-3-ct.yml* will run the task to create the LXC containers.
3) from the atq-prj path, *ansible-playbook -i .hosts task2a.yml* will do all which includes /etc/hosts setup from templates.
4) from the atq-prj path, *ansible-playbook -i .hosts task2b.yml* will do all which includes NTPd setup from templates.
