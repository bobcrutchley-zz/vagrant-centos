# -*- mode: ruby -*-
# vi: set ft=ruby :
apps = ""
File.open("resources/apps.txt") do |f|
  f.each_line do |line|
	  apps << "#{line.strip} "
  end
end
scripts = Dir["scripts/*.sh"]
Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.provision "shell", privileged: false, inline: "sudo yum update -y"
  config.vm.provision "shell", privileged: false, inline: "sudo yum groupinstall -y \"Development Tools\""
  config.vm.provision "shell", privileged: false, inline: "sudo yum install -y #{apps}"
  scripts.each do |script|
     config.vm.provision "shell", privileged: false, path: script
  end
  config.vm.network "forwarded_port", guest: 25565, host: 25565
end
