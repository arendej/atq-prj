#!/bin/bash
# need this script in order to setup ssh access on the CTs.

PASS=tester0
USR=root
CMD="yum install -y openssh-server; systemctl enable sshd; systemctl start sshd"
# shell to each..

#expect \"login: \"
#send \"$USR\r\"
#expect \"Password:\"
#send \"$PASS\r\"

XEC1=$(expect -c "
pct enter 124
expect \"\\\\#\"
send \"$CMD\r\"
expect \"\\\\#\"
send \"logout\"
")

XEC2=$(expect -c "
pct enter 125
expect \"\\\\#\"
send \"$CMD\r\"
expect \"\\\\#\"
send \"logout\"
")

XEC3=$(expect -c "
pct enter 126
expect \"\\\\#\"
send \"$CMD\r\"
expect \"\\\\#\"
send \"logout\"
")

echo $XEC1
echo $XEC2
echo $XEC3
