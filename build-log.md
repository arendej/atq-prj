**Arctiq intro project - build log - Aaren De Jong**

*Build log entry July 7, 2017*

- This is enough of a project that I will need to employ the method I go-to for such things, which is to split is into smaller manageable parts. 
- Next I need to build my confident code first and documents my stopping points rather than get hung up on them.

- I decided on starting with a scratch playbook to build a CT (LXC container) in Proxmox, in my homelab. Without confidence of being able to do this, my options for platform would bring me into far more unfamiliar territory than I can afford for time.

- the above playbook worked, so I begin building out individual plays to call for getting the base functionality done... create, start, stop, restart, add ssh key, for the LXC containers.

- Now I need to address the remainder as pseudo-code / overview of how to make this work.
- Gather docs to do the following as well..

*****
* somewhere in here ansible checks github for all of the below code and uses it for this.

* ansible builds the CTs (containers), with ansible keys within, on the root user, and sets google DNS on them.
http://docs.ansible.com/ansible/proxmox_module.html

* (likely need to disable selinux)

* ansible starts the CTs, installs necessary software via yum module, disables SELinux and sets up firewall rules.
* ansible adds the scotty (ansible) user to the CTs, including sudo entry in sudoers file, and adds the scotty public key.

* (if I have time) ansible creates bricks of xfs on the CTs, (1 GB each), and builds a gluster cluster of the 3 in replicate/arbiter mode, to serve the apache document-root.

* Deploy Apache server to one CT via jinja2 templates, for the config file and the web-page.
* use jinja2 templates to set the 3 CTs /etc/hosts files as follows.
-- host 1 has records of all 3
-- host 2 has host 1 record only
-- host 3 has host 2 record only
-- host 1 has US ntp.pool.org
-- host 2 & 3 have CA ntp.pool.org

* Ansible takes working config/code and runs a bash script I build to link to all the source code from a html page, served from a CT's apache.
* check for idempotency.

* (if I have time) ansible sets up a wiki or similar to drop my notes into.



*****


I have noted that I need some more practice managing git repos.

I should try to get to know and use ansible vault if possible before end of the weekend.

-------------------------------- end of July 7 entry.
