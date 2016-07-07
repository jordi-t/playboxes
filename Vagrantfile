# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|

  config.vm.box = "debian/jessie64"
  config.vm.provision :shell, path: "bootstrap.sh"

  config.vm.define "box1" do |box1|

    box1.vm.hostname = 'box1'
    box1.vm.network :private_network, ip: "192.168.2.101"

    box1.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--name", "box1"]
    end
  end

  config.vm.define "box2" do |box2|

    box2.vm.hostname = 'box2'
    box2.vm.network :private_network, ip: "192.168.2.102"

    box2.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--name", "box2"]
    end
  end
  
  config.vm.define "box3" do |box3|

    box3.vm.hostname = 'box3'
    box3.vm.network :private_network, ip: "192.168.2.102"

    box3.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--name", "box3"]
    end
  end

end
