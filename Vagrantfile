Vagrant.configure("2") do |config|
  config.vm.box_check_update = false

  # config.vm.define "nginx" do |nginx|
    # nginx.vm.box = "sbeliakou/centos-6.8-x86_64"
    # nginx.vm.synced_folder "Share/", "/Share"
    # nginx.vm.network "public_network", ip: "192.168.1.65"
    # nginx.vm.network "private_network", ip: "192.168.2.75"
    # nginx.vm.provision "shell", path: "https://raw.githubusercontent.com/eldoranstars/vagrant/main/nginx.sh"
    # nginx.vm.provider "virtualbox" do |vb|
      # vb.memory = "2048"
      # vb.cpus = "1"
      # vb.name
    # end
  # end

  # config.vm.define "tomcat" do |tomcat|
    # tomcat.vm.box = "sbeliakou/centos-6.8-x86_64"
    # tomcat.vm.synced_folder "Share/", "/Share"
    # tomcat.vm.network "public_network", ip: "192.168.1.66"
    # tomcat.vm.network "private_network", ip: "192.168.2.76"
    # tomcat.vm.provision "shell", path: "https://raw.githubusercontent.com/eldoranstars/vagrant/main/tomcat.sh"
    # tomcat.vm.provider "virtualbox" do |vb|
      # vb.memory = "4096"
      # vb.cpus = "1"
      # vb.name = "tomcat"
    # end 
  # end

  # config.vm.define "master" do |master|
  #   master.vm.box = "centos/7"
  #   master.vm.hostname = "master"
  #   master.vm.network "public_network", ip: "192.168.1.67"
  #   # master.vm.synced_folder ".", "/vagrant", disabled: true
  #   master.vm.provision "shell", path: "k8s.sh"
  #   master.vm.provider "virtualbox" do |vb|
  #     vb.memory = "2048"
  #     vb.cpus = "2"
  #     vb.name = "master"
  #   end 
  # end

  # config.vm.define "worker" do |worker|
  #   worker.vm.box = "centos/7"
  #   worker.vm.hostname = "worker"
  #   worker.vm.network "public_network", ip: "192.168.1.68"
  #   # worker.vm.synced_folder ".", "/vagrant", disabled: true
  #   worker.vm.provision "shell", path: "k8s.sh"
  #   worker.vm.provider "virtualbox" do |vb|
  #     vb.memory = "1024"
  #     vb.cpus = "1"
  #     vb.name = "worker"
  #   end
  # end

  config.vm.define "ubuntu" do |ubuntu|
    ubuntu.vm.box = "ubuntu/focal64"
    ubuntu.vm.hostname = "ubuntu"
    ubuntu.vm.network "public_network", ip: "192.168.1.70", bridge: [
      "Intel(R) Ethernet Connection (12) I219-V",
      "Realtek Gaming GbE Family Controller",
      "Realtek PCIe GbE Family Controller",
    ]
    ubuntu.vm.synced_folder ".", "/vagrant", disabled: true
    ubuntu.vm.provision "shell", path: "ubuntu.sh"
    ubuntu.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = "1"
      vb.name = "ubuntu"
    end
  end

end
