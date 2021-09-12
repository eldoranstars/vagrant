Vagrant.configure("2") do |config|
  config.vm.provision "shell", inline: "echo Hello"

  # config.vm.define "nginx" do |nginx|
    # nginx.vm.box = "sbeliakou/centos-6.8-x86_64"
    # nginx.vm.synced_folder "Share/", "/Share"
    # nginx.vm.network "public_network", ip: "192.168.1.65"
    # nginx.vm.network "private_network", ip: "192.168.2.75"
    # nginx.vm.provision "shell", path: "https://raw.githubusercontent.com/eldoranstars/vagrant/main/nginx"
    # nginx.vm.provider "virtualbox" do |vb|
    	# vb.memory = "2048"
	# vb.cpus = "1"
	# vb.name = "nginx"
    # end 
  # end

  # config.vm.define "tomcat" do |tomcat|
    # tomcat.vm.box = "sbeliakou/centos-6.8-x86_64"
    # tomcat.vm.synced_folder "Share/", "/Share"
    # tomcat.vm.network "public_network", ip: "192.168.1.66"
    # tomcat.vm.network "private_network", ip: "192.168.2.76"
    # tomcat.vm.provision "shell", path: "https://raw.githubusercontent.com/eldoranstars/vagrant/main/tomcat"
    # tomcat.vm.provider "virtualbox" do |vb|
    	# vb.memory = "4096"
	# vb.cpus = "1"
	# vb.name = "tomcat"
    # end 
  # end
  
   config.vm.define "centos_first" do |centos_first|
    centos_first.vm.box = "centos/7"
    centos_first.vm.hostname = "centos_first"
    centos_first.vm.network "public_network", ip: "192.168.1.67"
    centos_first.vm.synced_folder ".", "/vagrant", disabled: true
    centos_first.vm.provision "shell", path: "https://raw.githubusercontent.com/eldoranstars/vagrant/main/k8s"
    centos_first.vm.provider "virtualbox" do |vb|
    	vb.memory = "4096"
	vb.cpus = "2"
	vb.name = "centos_first"
    end 
  end
  
   config.vm.define "centos_second" do |centos_second|
    centos_second.vm.box = "centos/7"
    centos_second.vm.hostname = "centos_second"
    centos_second.vm.network "public_network", ip: "192.168.1.68"
    centos_second.vm.synced_folder ".", "/vagrant", disabled: true
    centos_second.vm.provision "shell", path: "https://raw.githubusercontent.com/eldoranstars/vagrant/main/k8s"
    centos_second.vm.provider "virtualbox" do |vb|
    	vb.memory = "4096"
	vb.cpus = "2"
	vb.name = "centos_second"
    end 
  end

end
