# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bento/centos-7.6"

  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "/vagrant/main.yml"

    # Uncomment this if you need more verbose output from Ansible
    # ansible.verbose = vv
  end
end
