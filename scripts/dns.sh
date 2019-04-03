#!/bin/bash

nmap -sU --script="dns-*" -iL ../target.txt
