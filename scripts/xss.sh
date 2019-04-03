#!/bin/bash

nmap -p80 --script http-dombased-xss.nse -iL ../target.txt
