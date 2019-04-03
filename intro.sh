#!/bin/bash
# Author: Aleksandr Krasnov
# Hire me: https://www.linkedin.com/in/alekkras
# In case of any problems, raise an issue
# If you happen to know how to fix an issue, make a pull request

# Define colors for pretty output

red=$'\e[1;31m'
grn=$'\e[1;32m'
yel=$'\e[1;33m'
blu=$'\e[1;34m'
mag=$'\e[1;35m'
cyn=$'\e[1;36m'
end=$'\e[0m'

apt()
{
    apt-get update -y
    apt-get upgrade -y
    apt autoremove -y
}


install_nmap()
{
    apt-get install nmap -y
}

install_nikto()
{
    mkdir tools
    cd tools/
    mkdir nikto
    cd nikto/
    wget https://github.com/sullo/nikto/archive/master.zip
    unzip master.zip
    cd nikto-master/program
    apt-get install perl -y
    perl nikto.pl
    cd ../..
}

install_slowloris()
{
    apt-get install perl -y
    apt-get install libwww-mechanize-shell-perl
    apt-get install perl-mechanize && apt-get install libfuture-perl
    cd tools/
    git clone https://github.com/llaera/slowloris.pl.git
    cd ../..
}

install_HULK()
{
    apt-get install git -y
    cd tools/
    git clone https://github.com/grafov/hulk.git
    cd ..
}

install_GoldenEye()
{
    apt-get install git -y
    cd tools/
    git clone https://github.com/jseidl/GoldenEye.git
    cd ..
}

install_hping3()
{
    apt-get install hping3 -y
}


main()
{
    echo "${grn}- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ${end}"
    echo "${grn}WELCOME TO THE SLEEPY DUCK INSTALLER!!!${end}"
    echo "${grn}- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ${end}"
    cat art/duck.txt
    # automatic or manual installation?
    echo -n "Would you like to install everything ${grn}automatically${end} or ${red}manually${end}? (A/M)"
    read ans
    if [[ $ans == "A" || $ans == "a" ]]; then
      install_nmap
      install_nikto
      install_HULK
      install_hping3
      install_GoldenEye
      install_slowloris
      echo "${grn}- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ${end}"
      echo "${grn}INSTALLATION HAS BEEN COMPLETED, YOU ARE READY TO EXPLORE ! ! !${end}"
      echo "${grn}- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ${end}"
      exit 1
   else
    # NMAP installation
    echo -n "Would you like to install ${cyn}nmap${end}?[Hihgly recommended] Type Y/N and press [ENTER]"
    read answer1
    if [[ $answer1 == "Y" || $answer1 == "y" ]]; then
      install_nmap
      echo "${grn}- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ${end}"
      echo "${grn}NMAP HAS BEEN INSTALLED ! ! !${end}"
      echo "${grn}- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ${end}"
    else
      echo "${red} It's impossible to do scans using Sleepy Duck without nmap, bye! ${end}"
    fi

    # NIKTO installation
    echo -n "Would you like to install ${cyn}nikto${end}? Type Y/N and press [ENTER]"
    read answer2
    if [[ $answer2 == "Y" || $answer2 == "y" ]]; then
      install_nikto
      echo "${grn}- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ${end}"
      echo "${grn}NIKTO HAS BEEN INSTALLED ! ! !${end}"
      echo "${grn}- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ${end}"
    fi
    # SLOWLORIS installation

    echo -n "Would you like to install ${cyn}slowloris${end}? Type Y/N and press [ENTER]"
    read answer3
    if [[ $answer3 == "Y" || $answer3 == "y" ]]; then
      install_slowloris
      echo "${grn}- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ${end}"
      echo "${grn}SLOWLORIS HAS BEEN INSTALLED ! ! !${end}"
      echo "${grn}- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ${end}"
    fi
    # HULK installation
    echo -n "Would you like to install ${cyn}HULK${end}? Type Y/N and press [ENTER]"
    read answer4
    if [[ $answer4 == "Y" || $answer4 == "y" ]]; then
      install_HULK
      echo "${grn}- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ${end}"
      echo "${grn}HULK HAS BEEN INSTALLED ! ! !${end}"
      echo "${grn}- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ${end}"
    fi
    # GoldenEye installation
    echo -n "Would you like to install ${cyn}GoldenEye${end}? Type Y/N and press [ENTER]"
    read answer5
    if [[ $answer5 == "Y" || $answer5 == "y" ]]; then
      install_GoldenEye
      echo "${grn}- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ${end}"
      echo "${grn}GOLDEN EYE HAS BEEN INSTALLED ! ! !${end}"
      echo "${grn}- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ${end}"
    fi

    # hping3 installation
    echo -n "Would you like to install ${cyn}hping3${end}? Type Y/N and press [ENTER]"
    read answer6
    if [[ $answer6 == "Y" || $answer6 == "y" ]]; then
      install_hping3
      echo "${grn}- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ${end}"
      echo "${grn}HPING3 HAS BEEN INSTALLED ! ! !${end}"
      echo "${grn}- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ${end}"
fi
fi
}
if [ "$(grep -Ei 'debian|buntu|mint' /etc/*release)" ]; then
   echo "This is Debian based, we will proceed"
   echo -n "Would you like to update and upgrade your APT package? ${mag}Note: will take a significant amount of time!${end} Type Y/N and press [ENTER]"
   read apt
   if [[ $apt == "Y" || $apt == "y" ]]; then
       apt
       continue
   else
       continue
    fi
   main
fi
