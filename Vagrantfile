$script = <<-SCRIPT
set -e
pacman -Sy --noconfirm python2-pip
pip2 install salt-ssh==2018.3.3
SCRIPT

Vagrant.configure("2") do |config|

  config.vm.box = "generic/arch"
  config.vm.hostname = "salt-test-arch"

  config.vm.provider "virtualbox" do |vb|
    vb.name = "Salt Test (Arch)"
    vb.memory = 1024
    vb.cpus = 4
  end

  config.vm.synced_folder ".", "/home/vagrant/salt/"

  config.vm.provision "shell", inline: $script
end
