#/bin/bash
sudo chmod o+w -R /var/cache/yum/x86_64/6
echo "http://vault.centos.org/6.8/os/x86_64/" > /var/cache/yum/x86_64/6/base/mirrorlist.txt
echo "http://vault.centos.org/6.8/extras/x86_64/" > /var/cache/yum/x86_64/6/extras/mirrorlist.txt
echo "http://vault.centos.org/6.8/updates/x86_64/" > /var/cache/yum/x86_64/6/updates/mirrorlist.txt
sudo yum update -y
sudo yum install nginx -y 
sudo chmod o+w -R /etc/nginx/conf.d
sudo cp /Share/default.conf /etc/nginx/conf.d/default.conf
sudo chkconfig nginx on
sudo service nginx start
