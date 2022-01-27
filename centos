#/bin/bash
sudo yum update -y
sudo yum install ntp -y
sudo systemctl enable ntpd
sudo systemctl start ntpd
sudo yum install git -y
# https://github.com/ohmybash/oh-my-bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
sed -i 's/OSH_THEME="font"/OSH_THEME="zork"/g' ~/.bashrc
sudo yum install bash-completion bash-completion-extras -y
source /etc/profile.d/bash_completion.sh