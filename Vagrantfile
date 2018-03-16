# -*- mode: ruby -*-
# vi: set ft=ruby :
apps = ""
File.open("resources/apps.txt") do |f|
  f.each_line do |line|
	  apps << "#{line.strip} "
  end
end
Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.provision "shell", privileged: false, inline: "sudo yum update -y"
  config.vm.provision "shell", privileged: false, inline: "sudo yum install -y #{apps}"
  config.vm.provision "shell", privileged: false, path: "scripts/git.sh"
  config.vm.provision "shell", privileged: false, path: "scripts/vim.sh"
end
