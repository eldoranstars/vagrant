#/bin/bash
sudo chmod o+w -R /var/cache/yum/x86_64/6/
echo "http://vault.centos.org/6.8/os/x86_64/" > /var/cache/yum/x86_64/6/base/mirrorlist.txt
echo "http://vault.centos.org/6.8/extras/x86_64/" > /var/cache/yum/x86_64/6/extras/mirrorlist.txt
echo "http://vault.centos.org/6.8/updates/x86_64/" > /var/cache/yum/x86_64/6/updates/mirrorlist.txt
sudo yum update -y
sudo yum install java-1.7.0-openjdk.x86_64 -y 
sudo yum install tomcat -y
sudo yum install tomcat-webapps tomcat-admin-webapps -y
sudo sed -i '43a\  <user username="admin" password="admin" roles="admin-gui,manager-gui"/>' /etc/tomcat/tomcat-users.xml
sudo sed -i '71a\               address="192.168.2.76"' /etc/tomcat/server.xml
sudo chkconfig tomcat on
sudo service tomcat start
