# 1. Download and install go
https://golang.org/doc/install

# 2. Download and install VMware workstation player
https://www.vmware.com/products/workstation-player.html

# 3. Download and install vagrant
https://www.vagrantup.com/downloads

# 4. Download vagrant vmware utility
https://www.vagrantup.com/vmware/downloads

# 5. Install vagrant-vmware-desktop
vagrant plugin install vagrant-vmware-desktop

# 6. Update vagrant-vmware-desktop
vagrant plugin update vagrant-vmware-desktop

# 7. Start service vagrant-vmware-desktop(Need administrator)
net.exe start vagrant-vmware-utility

# 8. Vagrant init and make vagrantfile with failure
cd [ANY_YOU_WANT]
vagrant init

# 9. Install base box
vagrant box add hashicorp/bionic64

PS C:\Users\[CUSTOM_PATH]> vagrant box add hashicorp/bionic64
==> box: Loading metadata for box 'hashicorp/bionic64'
    box: URL: https://vagrantcloud.com/hashicorp/bionic64
This box can work with multiple providers! The providers that it
can work with are listed below. Please review the list and choose
the provider you will be working with.

1) hyperv
2) virtualbox
3) vmware_desktop

Enter your choice: 3
==> box: Adding box 'hashicorp/bionic64' (v1.0.282) for provider: vmware_desktop
    box: Downloading: https://vagrantcloud.com/hashicorp/boxes/bionic64/versions/1.0.282/providers/vmware_desktop.box
    box:
==> box: Successfully added box 'hashicorp/bionic64' (v1.0.282) for 'vmware_desktop'!

# 10. Edit vagrant file 
# Edit this: config.vm.box = "hashicorp/bionic64"

# 11. Vagrant up
vagrant up --provider vmware_desktop

# 12. Check VM is running
vagrant status

Current machine states:

default                   running (vmware_desktop)

# 13. Connect to VM
vagrant ssh

vagrant@vagrant:~$

# 14. Happy linux
grep . /etc/*-release


