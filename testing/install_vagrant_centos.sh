# Step 1: Add VirtualBox
sudo dnf -y install wget
wget https://download.virtualbox.org/virtualbox/rpm/el/virtualbox.repo
sudo mv virtualbox.repo /etc/yum.repos.d/

# Import Oracle Pub key
wget -q https://www.virtualbox.org/download/oracle_vbox.asc
sudo rpm --import oracle_vbox.asc

# Add EPEL Repo
sudo dnf -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm

# Step 2: InstallVirtual Box
sudo dnf -y install binutils kernel-devel kernel-headers libgomp make patch gcc glibc-headers glibc-devel dkms

sudo dnf install -y VirtualBox-6.1


sudo usermod -aG vboxusers $USER
sudo /usr/lib/virtualbox/vboxdrv.sh setup

# Step 3: Start VirtualBox
$ VirtualBox


# Download Extension Pack
cd ~/ &&  wget https://download.virtualbox.org/virtualbox/6.1.22/Oracle_VM_VirtualBox_Extension_Pack-6.1.22.vbox-extpack


# Step 4: install Vagrant
sudo dnf groupinstall "Development Tools" -y
sudo dnf -y install rsync gcc zlib-devel libvirt-devel cmake

#install ruby - required for vagrant
sudo dnf install -y ruby ruby-devel

# add vagrant yum repo
sudo yum install -y yum-utils

sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo

sudo yum install vagrant

# Step 5: Enjoy but before that - check it works

$ vagrant --version
