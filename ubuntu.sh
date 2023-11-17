#/bin/bash
sudo sed -i 's/#PubkeyAuthentication no/PubkeyAuthentication yes/g' /etc/ssh/sshd_config
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sudo systemctl restart sshd
# sudo apt update
# sudo apt install ubuntu-desktop -y
# sudo service gdm3 start
# sudo update-alternatives --config editor