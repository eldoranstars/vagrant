#/bin/bash
sudo yum update -y
sudo yum install wget net-tools netcat nc -y
sudo yum install java-1.8.0-openjdk -y
# Для нормальной производительности узла кластера необходимо подкорректировать настройки свопирования памяти. 
sudo sysctl vm.swappiness=1
# Для сохранения настроек при перезагрузке добавим строчку в файл конфигурации 
echo 'vm.swappiness=1' | sudo tee --append /etc/sysctl.conf
# Устанавливаем лимиты файлов для дескрипторов файлов 100.000
echo "* hard nofile 100000 * soft nofile 100000" | sudo tee --append /etc/security/limits.conf
# Disable SELinux
sudo setenforce 0
sudo sed -i 's/SELINUX=enabled/SELINUX=disabled/g' /etc/selinux/config
sudo reboot now