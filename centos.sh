#/bin/bash
sudo yum update -y
sudo yum install ntp -y
sudo systemctl enable ntpd
sudo systemctl start ntpd
sudo yum install git -y
# https://github.com/ohmybash/oh-my-bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
sed -i 's/OSH_THEME="font"/OSH_THEME="powerline"/g' ~/.bashrc
sed -i 's/_CLEAN_COLOR=25/_CLEAN_COLOR=6/g' ~/.oh-my-bash/themes/powerline/powerline.theme.sh
sed -i 's/_DIRTY_COLOR=88/_DIRTY_COLOR=4/g' ~/.oh-my-bash/themes/powerline/powerline.theme.sh
sed -i 's/_STAGED_COLOR=30/_STAGED_COLOR=3/g' ~/.oh-my-bash/themes/powerline/powerline.theme.sh
sed -i 's/_UNSTAGED_COLOR=92/_UNSTAGED_COLOR=1/g' ~/.oh-my-bash/themes/powerline/powerline.theme.sh
sed -i 's/CWD_THEME_PROMPT_COLOR=240/CWD_THEME_PROMPT_COLOR=23/g' ~/.oh-my-bash/themes/powerline/powerline.theme.sh
sudo yum install bash-completion bash-completion-extras -y
source /etc/profile.d/bash_completion.sh