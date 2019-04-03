# <img src="art/logo.png">  Sleepy Duck  <img src="art/logo.png">



It's an open source project created for performing vulnerability assessments automatically.

## Why Sleepy Duck? 

My motivation to create this project was to be able to perform vulnerability assessment automatically and saving resources such as time. 

My goal is to make sure that the Sleepy Duck is efficient enough that you don't really need to be either aware of what's going on nor not sleepy.

<img src="https://media.giphy.com/media/vJRMuf14ygIec/giphy.gif">


## Getting Started


In order to start using the Sleepy Duck, you will need to do the following:

- [ ] `git clone https://github.com/AlekKras/Sleepy-Duck.git` <br/>
- [ ] `cd Sleepy-Duck` <br/>
- [ ] `sudo bash intro.sh && sudo bash start.sh` <br/>
- [ ] Sit tight :sunglasses: and enjoy (maybe take a nap?) :sleeping: <br/>

### Prerequisites

There are couple things you might need:

- have Ubuntu 18 of any kind 

- create a VagrantBox

In order to have a VagrantBox, you can use Windows and download all necessary things from there. You can do the same with MacOS. If you happen to have a Linux distro with `apt` package, that do the following

``` bash
apt-get install virtualbox -y
apt-get install vagrant -y
vagrant -v
touch Vagrantfile
```

After that, you will notice `Vagrantfile` in your folder, open it and type:

```
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
end
```
Then type `vagrant up && vagrant ssh` and you are good to go.

### Installing

YOU CAN ALWAYS PULL THE IMAGE FROM THE DOCKER HUB:
`docker pull alekkras/sleepy_duck`


Installation has been made easy for you. Again, you have 2 options:

- Run `sudo bash intro.sh` 

This will perform an automatic download of all necessary tools

- Go to `/Ansible` and type `ansible-playbook intro.yml`

In order to install Ansible, you can perform:

```
sudo easy_install pip
sudo pip install ansible
```

If that would not work for you, you can do the following:
``` bash
sudo apt-get install software-properties-common 
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible
sudo apt-get autoremove
```


#### ALTERNATIVE OPTION

I have added Dockefile of Ubuntu image so you can build a Dockerfile and run the Sleepy-Duck in the isolated environment. For such thing, a new scripts will be written that does an automatic scanning and installation of everything once you are in the Docker image [Will be released in the version **1.5**]

So far, once you git cloned the repo, go to the repo, and find a `Dockerfile`

Run the following:
```
docker build -t "sleepy_duck:dockerfile" .
```

Once you have built it, run the image as bash:
```
docker run -it sleepy_duck:dockerfile bash
```

Once you are inside the image, cd to Sleepy-Duck and perform the script

## Running the program 

``` console
whoami@whoami: ~/Desktop/Sleepy-Duck$ sudo bash intro.sh
[sudo] password for whoami: 
This is Debian based, we will proceed
Would you like to update and upgrade your APT package? Note: will take a significant amount of time! Type Y/N and press [ENTER] n

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
WELCOME TO THE SLEEPY DUCK INSTALLER!!!
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
.. _____ _ ....................... _____ ........... _ .........................
. / ____| |.......................|  __ \...........| |.........................
.| (___ | | ___. ___ _ __. _ . _. | |..| |_.. _. ___| |.__......................
. \___ \| |/ _ \/ _ | '_ \| | | | | |..| | | | |/ __| |/ /......................
. ____) | |  __|  __| |_) | |_| | | |__| | |_| | (__|   <.......................
.|_____/|_|\___|\___| .__/ \__, | |_____/ \__,_|\___|_|\_\......................
....................| |.....__/ |...............................................
....................|_|....|___/................................................
................................................................................
................................................................................
....................::::::::  ..................................................
...................:~~~~===:::..................................................
.................::~~~===++=::::................................................
................+::~====.==+==::................................................
................+::~=======+++:::...............................................
............??~:+::~~~======++~~:...............................................
.........???????+:::::::====++==:...............................................
......................:::::+++~~:...............................................
.........................::+~~::................................................
........................:::+~~::................................................
......................::~++~::..................................................
................... ::~~~++:............ .......................................
.................:::~~~~:::.....................................................
................::: :::::.......................................................
..............::::::     ::~~~~~~~~.............................................
............::::~::::::::::++++++~~~~~~~........................................
...........:::~~:::::::::..+++++++++++~~~~~.....................................
...........:~~:::::::::::++++++++++++++++~~~....................................
.........:::~~:::::::::::++::::::++++++++++:::..................................
.........::~::::::::::++++++++++::::+++++++.  :::...............................
.........::~::::::::+++++++++++++++:::::++++++ 7:::.............................
.........::::::::::=++++++++++++++++++++::::++.. :::::..........................
.........::::::::::=+++++++++++++++++++++++::::::   :::::.. ....................
.........::::::::==+++++++++++++++++++++.  ::::::::+++++::: ....................
...........::::::==++++++++++++++++++++++.. :::::+++.....   ....................
............:::::==+++++++++++++++++++++++++  ::...........   ..................
..............:::==++++++++++++++++++++++++...  ................................
................:=======++++++++++++++++=++===           +++++..................
.................~~~=====++======++=============......++++++....................
...................~~~~:====++==========++++++++=...............................
......................~~~~~~~~===++++++++.......................................
...........................~~~~~~~~.............................................
............................==..=...............................................
............................==..=...............................................
............................==..=...............................................
....................=======.==..=...............................................
.................+++=======+=====...............................................
................................................................................
................................................................................
................................................................................
Would you like to install everything automatically or manually? (A/M)

. . . 
```
You are free to chose anything. For the first timers, I would highly recommend installing everything automatically. 

If you don't want to do that, you can go to `/Ansible` folder and run `ansible-playbook intro.yml` that will install everything for you!

Then, you would want to start attacking, right?

``` console
whoami@whoami: ~/Desktop/Sleepy-Duck$ sudo bash start.sh

.. _____ _ ....................... _____ ........... _ .........................
. / ____| |.......................|  __ \...........| |.........................
.| (___ | | ___. ___ _ __. _ . _. | |..| |_.. _. ___| |.__......................
. \___ \| |/ _ \/ _ | '_ \| | | | | |..| | | | |/ __| |/ /......................
. ____) | |  __|  __| |_) | |_| | | |__| | |_| | (__|   <.......................
.|_____/|_|\___|\___| .__/ \__, | |_____/ \__,_|\___|_|\_\......................
....................| |.....__/ |...............................................
....................|_|....|___/................................................
................................................................................
................................................................................
....................::::::::  ..................................................
...................:~~~~===:::..................................................
.................::~~~===++=::::................................................
................+::~====.==+==::................................................
................+::~=======+++:::...............................................
............??~:+::~~~======++~~:...............................................
.........???????+:::::::====++==:...............................................
......................:::::+++~~:...............................................
.........................::+~~::................................................
........................:::+~~::................................................
......................::~++~::..................................................
................... ::~~~++:............ .......................................
.................:::~~~~:::.....................................................
................::: :::::.......................................................
..............::::::     ::~~~~~~~~.............................................
............::::~::::::::::++++++~~~~~~~........................................
...........:::~~:::::::::..+++++++++++~~~~~.....................................
...........:~~:::::::::::++++++++++++++++~~~....................................
.........:::~~:::::::::::++::::::++++++++++:::..................................
.........::~::::::::::++++++++++::::+++++++.  :::...............................
.........::~::::::::+++++++++++++++:::::++++++ 7:::.............................
.........::::::::::=++++++++++++++++++++::::++.. :::::..........................
.........::::::::::=+++++++++++++++++++++++::::::   :::::.. ....................
.........::::::::==+++++++++++++++++++++.  ::::::::+++++::: ....................
...........::::::==++++++++++++++++++++++.. :::::+++.....   ....................
............:::::==+++++++++++++++++++++++++  ::...........   ..................
..............:::==++++++++++++++++++++++++...  ................................
................:=======++++++++++++++++=++===           +++++..................
.................~~~=====++======++=============......++++++....................
...................~~~~:====++==========++++++++=...............................
......................~~~~~~~~===++++++++.......................................
...........................~~~~~~~~.............................................
............................==..=...............................................
............................==..=...............................................
............................==..=...............................................
....................=======.==..=...............................................
.................+++=======+=====...............................................
................................................................................
................................................................................
................................................................................
Welcome to the Sleepy-Duck
Let's find the target!!!
What is your target?

༼(∩ ͡°╭͜ʖ╮͡ ͡°)༽⊃━☆ﾟ. * ･ ｡ﾟ   

. . . 
```
Then you chose your target and decide on what actions to take.

## Tools used

* [Nikto](https://cirt.net/Nikto2) - web server scanner
* [Nmap](https://nmap.org/) - security scanner
* [GoldenEye](https://github.com/jseidl/GoldenEye) - Denial of Service (DoS) tool
* [Slowloris](https://github.com/llaera/slowloris.pl) - Denial of Service (DoS) tool
* [Hping3](https://tools.kali.org/information-gathering/hping3) - Firewall testing, port scanning, network testing tool
* [HULK](https://github.com/grafov/hulk/) - Denial of Service (DoS) tool written in Go and Python

## Contributing

Please, read [CONTRIBUTING.md](https://raw.githubusercontent.com/AlekKras/Sleepy-Duck/master/CODE_OF_CONDUCT.md) for details on our code of conduct