Vagrant.configure("2") do |config|

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
  
   config.vm.define "master" do |master|
    master.vm.box = "centos/7"
    master.vm.hostname = "master"
    master.vm.network "public_network", ip: "192.168.1.67"
    # master.vm.synced_folder ".", "/vagrant", disabled: true
    master.vm.provision "shell", path: "k8s"
    master.vm.provider "virtualbox" do |vb|
    	vb.memory = "3072"
	    vb.cpus = "2"
	    vb.name = "master"
    end 
  end
  
   config.vm.define "worker" do |worker|
    worker.vm.box = "centos/7"
    worker.vm.hostname = "worker"
    worker.vm.network "public_network", ip: "192.168.1.68"
    # worker.vm.synced_folder ".", "/vagrant", disabled: true
    worker.vm.provision "shell", path: "k8s"
    worker.vm.provider "virtualbox" do |vb|
    	vb.memory = "3072"
	    vb.cpus = "2"
	    vb.name = "worker"
    end 
  end

end
