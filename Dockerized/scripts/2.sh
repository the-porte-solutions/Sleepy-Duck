#!/bin/bash
# Author: Aleksandr Krasnov
# That's for $nmap:2

nmap -sV --script http-headers.nse -iL ../target.txt
nmap -sU --script="dns-*" -iL ../target.txt #we actually need it because it may interfere with some of headers
nmap --script "http-*" -iL ../target.txt
cd ..
