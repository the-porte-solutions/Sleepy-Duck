# Testing



If you have found yourself here, that means you would like to test the Sleepy-Duck.

If you desire to test it out, I use Docker containers as well as Vagrant Boxes to test the Sleepy-Duck.

## Compatibility with OS

So far, I have the following versions ready to work: 

- Debian based

I will be working to include:

- CentOS and RedHat Enterprise
- Windows
- FreeBSD

#
# How to test

To test the environment via Docker, you would need the following tools: 

- <a href="https://www.docker.com">Docker</a>
- any OS
- access to `root`

To download required dependencies you can go ahead and download Docker OR you can run `install_docker.sh` script. It's up to you.

To test the environment via Vagrant, you would need the following tools:

- <a href="https://www.virtualbox.org/"> VirtualBox</a>
- <a href="https://www.vagrantup.com/">Vagrant</a>
- any OS
- access to `root`

To download required dependencies you can go ahead and download all of those things OR you can run `install_vagrant.sh` script. It's up to you.

Create `Vagrantfile` and include there the following:

```
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
end
```

The testing environment is a traditional Ubuntu/trusty64. To start Ubuntu, go ahead and type:

`vagrant up && vagrant ssh`

#### Do not forget to run `vagrant halt` once you finish your testing. Otherwise, ubuntu will run forever.

Either way is fine, however I prefer using Vagrant for major testing and Docker for minor issues.
