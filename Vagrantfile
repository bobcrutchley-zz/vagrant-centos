# -*- mode: ruby -*-
# vi: set ft=ruby :
require 'yaml'
scripts = Dir["scripts/*"]
Vagrant.configure("2") do |config|
  yum_packages = YAML.load_file("yum_packages.yml").join(" ")
  config.vm.box = "centos/7"
  config.vm.provision "shell", privileged: false, inline: "sudo yum update -y && sudo yum groupinstall -y \"Development Tools\""
  config.vm.provision "shell", privileged: false, inline: "sudo yum install -y #{yum_packages}"
  scripts.each do |script|
     config.vm.provision "shell", privileged: false, path: script
  end
end
