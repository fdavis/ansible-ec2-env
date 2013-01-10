This project uses Ansible to bring up a work/dev environment in EC2.

A few requirements:
* EC2 account
* Ansible with euca2ools installed
* Setting up the previous to work

Please see [JPMen's] [1] and [Seth Vidal's] [2] work using Anisble and EC2 for background information, explanations, and more.

[1]: http://jpmens.net/2012/11/21/provisioning-centos-ec2-instances-with-ansible/

[2]: http://skvidal.wordpress.com/2012/10/31/ansible-and-cloud-instances/



Disclaimer: This is an experiemental repo. Please use EC2 responsibly.

---

A few commands I used tinkering:
* Make a key using: euca-create-keypair ec2-ans | tail -n+2 > key/ec2-ans.pem
* Test Startup cmd: euca-run-instances -k nx_box ami-f61630b3
* euca-run-instances -t m1.medium ami-f61630b3 -k ec2-ans -g apache-centos
* run any instance launching plays with -i inv/default so it starts with localhost: ansible-playbook -i inv/default instance_up.yml
* instance killer (requires ec2 tools): alias ec2-killall='ec2-describe-instances | grep INST | awk '\''{print $2}'\'' | ec2-terminate-instances -' ([Seth's euca-terminate-instance tool is much better] [1])
* euca-create-group gname; euca-authorize gname -P proto -p port_number;

[1]: http://skvidal.wordpress.com/2012/11/02/euca-terminate-instances/

TODO phase 1:
* setup group allows fireball
* refactor to use fireball
* refactor installs, make grouplist
1. Debugging Tools
2. Development tools
3. Scientific support
4. TeX support
5. Technical Writing
6. X Window System
7. Desktop
* refactor installs, add nx freenx to default list, make default list nx server list

TODO phase 2:
* Test bring up with list of items
* Add iptables firewall rule to allow tcp sport 5099 on all instances
* setup auth server
* allow multi nx servers to single auth server
* RDP and VNC for NX
* RDP windows
* refactor playbook folders and dependencies etc... respectively

TODO phase 3:
* tack at least two different linux compute box
* another yum probably amazon linux for now
* ubuntu 10.04 LTS
* maybe try a solaris variant
* when more than yum distros are deployed, we need 2+ update playbooks


TODO phase 4:
* render queue
* job queue
