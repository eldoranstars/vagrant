Vagrant.configure("2") do |config|
  config.vm.provision "shell", inline: "echo Hello"

  config.vm.define "nginx" do |nginx|
    nginx.vm.box = "sbeliakou/centos-6.8-x86_64"
    nginx.vm.synced_folder "Share/", "/Share"
    nginx.vm.network "public_network", ip: "192.168.1.65"
    nginx.vm.provision "shell", path: "https://raw.githubusercontent.com/eldoranstars/vagrant/main/nginx"
    nginx.vm.provider "virtualbox" do |vb|
    	vb.memory = "2048"
		v.cpus = "1"
	vb.name = "nginx"
    end 
  end

  config.vm.define "tomcat" do |tomcat|
    tomcat.vm.box = "sbeliakou/centos-6.8-x86_64"
    tomcat.vm.synced_folder "Share/", "/Share"
    tomcat.vm.network "public_network", ip: "192.168.1.66"
    tomcat.vm.provision "shell", path: "https://raw.githubusercontent.com/eldoranstars/vagrant/main/tomcat"
    tomcat.vm.provider "virtualbox" do |vb|
    	vb.memory = "4096"
		v.cpus = "1"
	vb.name = "tomcat"
    end 
  end
  
   config.vm.define "ansible" do |ansible|
    ansible.vm.box = "sbeliakou/centos-7.5"
    ansible.vm.network "public_network", ip: "192.168.1.67"
    ansible.vm.provision "shell", inline: <<-SCRIPT 
	yum install epel-release -y
	yum install python-pip -y
	pip install ansible
	ansible --version
	SCRIPT
    ansible.vm.provider "virtualbox" do |vb|
    	vb.memory = "2048"
		v.cpus = "1"
	vb.name = "ansible"
    end 
  end

end
