# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

Vagrant.configure(2) do |config|
  config.vm.network "public_network"
  config.vm.define "graphviz" do |c|
    c.vm.provider "docker" do |d|
      d.name = "graphviz"
      d.privileged = true
      d.image = "xliu/graphviz:2.39"
      d.cmd = ["./graphviz.sh"]
      d.volumes = ["#{Dir.pwd}/dot:/tmp"]
    end
  end
end
