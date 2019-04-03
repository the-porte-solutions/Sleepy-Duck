#!/bin/bash
# Author Aleksandr Krasnov
# this script is used when $nmap:1

nmap --script=http-affiliate-id.nse -iL ../target.txt
nmap -sV --script "ajp-*.nse" -iL ../target.txt
nmap --script http-brute -iL ../target.txt
nmap --script "broadcast-*".nse -iL ../target.txt
nmap --script http-csrf.nse -iL ../target.txt
nmap -p80 --script http-devframework.nse -iL ../target.txt
nmap -sU --script="dns-*" -iL ../target.txt
nmap --script http-slowloris-check.nse -iL ../target.txt
nmap --script http-slowloris -iL ../target.txt
nmap --script=firewalk --traceroute -iL ../target.txt
nmap --script http-git.nse -iL ../target.txt
nmap -sV --script http-headers.nse -iL ../target.txt
nmap --script "http-*" -iL ../target.txt
nmap --script "http-vuln-*" -iL ../target.txt
nmap -sS --script address-info.nse -iL ../target.txt
nmap --script http-chrono -iL ../target.txt
nmap --script http-malware-host.nse -iL ../target.txt
nmap --script "mysql-*" -iL ../target.txt
nmap --script http-security-headers.nse -iL ../target.txt
nmap --script http-server-header.nse -iL ../target.txt
nmap --script http-sitemap-generator -iL ../target.txt
nmap --script "smb-*" -iL ../target.txt
nmap --script http-stored-xss.nse -iL ../target.txt
nmap --script http-traceroute -iL ../target.txt
nmap --script http-vhosts -iL ../target.txt
nmap --script http-waf-detect -iL ../target.txt
nmap -p80 --script http-dombased-xss.nse -iL ../target.txt
cd ..
