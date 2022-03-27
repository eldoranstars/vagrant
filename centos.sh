#/bin/bash
sudo yum update -y
sudo yum install ntp -y
sudo systemctl enable ntpd
sudo systemctl start ntpd
sudo yum install git -y
sudo yum install bash-completion bash-completion-extras -y
source /etc/profile.d/bash_completion.sh
1