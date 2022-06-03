#/bin/bash
sudo apt-get update && sudo apt-get upgrade -y
sudo apt install ubuntu-desktop -y
sudo service gdm3 start
# sudo update-alternatives --config editor