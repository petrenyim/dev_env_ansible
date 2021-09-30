# -*- mode: ruby -*-
# vi: set ft=ruby :

WORK_DIR = File.dirname(__FILE__)

Vagrant.configure("2") do |config|
  config.vm.box = "Ubuntu20.04"

  config.vm.provider "virtualbox" do |v|
    v.name = "Ubuntu20.04ZFS"
    v.gui = true
    v.memory = 16384
    v.cpus = 8
  end

  config.vm.provision "docker" do |d|
    d.build_image "/vagrant" " -t 'ansible-executor'"

    d.run "ansible-executor",
      cmd: "ansible-playbook --inventory localhost, -u $USER -e 'ansible_ssh_pass=4w3s0m3!' playbook.yml",
      args: "-v '/vagrant:/ansible' --network=host -w /ansible -e USER=mpetreny",
      restart: "no"
  end
end
