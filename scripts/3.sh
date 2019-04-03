#!/bin/bash
# Author: Aleksandr Krasnov
# $nmap:3
nmap -p80 --script http-dombased-xss.nse -iL ../target.txt
nmap --script http-waf-detect -iL ../target.txt
nmap --script http-traceroute -iL ../target.txt
nmap --script http-stored-xss.nse -iL ../target.txt
nmap --script http-stored-xss.nse -iL ../target.txt
nmap --script=firewalk --traceroute -iL ../target.txt
nmap -p80 --script http-devframework.nse -iL ../target.txt
nmap --script http-csrf.nse -iL ../target.txt && pwd && cd .. && pwd
