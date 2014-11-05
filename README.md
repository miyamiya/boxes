# Boxes

Vagrant boxes

## Requirements

* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* [Vagrant](http://www.vagrantup.com/downloads)

## Vagrant

### 1. Getting Started
```bash
$ git clone  git@github.com:miyamiya/boxes.git
$ cd centos7-box
$ vagrant plugin install vagrant-vbguest
```

### 2. Add box
Examples
```bash
$ vagrant box add CentOS7 {boxname}
$ vagrant box add CentOS7 CentOS7-x86_64.box
$ vagrant box add CentOS7 https://f0fff3908f081cb6461b407be80daf97f07ac418.googledrive.com/host/0BwtuV7VyVTSkUG1PM3pCeDJ4dVE/centos7.box
```
* Thanks. [Vagrant.es](http://www.vagrantbox.es/)

### 3. Update VBoxGuestAdditions
```bash
$ vagrant vbguest --auto-reboot
$ vagrant reload
```

### 4. Provisioning
```bash
$ vagrant provision
```

