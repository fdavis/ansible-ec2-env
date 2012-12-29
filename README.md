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
* run any instance launching plays with -i inv/default so it starts with localhost: ansible-playbook -i inv/default instance_up.yml
* instance killer (requires ec2 tools): alias ec2-killall='ec2-describe-instances | grep INST | awk '\''{print $2}'\'' | ec2-terminate-instances -' ([Seth's euca-terminate-instance tool is much better] [1])

[1]: http://skvidal.wordpress.com/2012/11/02/euca-terminate-instances/

TODO phase 2:
* Add iptables firewall rule to allow tcp sport 5099 on all instances
* setup auth server
* allow multi nx servers to single auth server
* RDP and VNC
* refactor playbook folders and dependencies etc... respectively

TODO phase 3:
* tack at least two different linux compute box
* another yum probably amazon linux for now
* ubuntu 10.04 LTS
* maybe try a solaris variant


TODO phase 4:
* render queue
* job queue
