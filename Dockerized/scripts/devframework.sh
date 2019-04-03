#!/bin/bash

nmap -p80 --script http-devframework.nse -iL ../target.txt
