#!/bin/bash

# Exploit and checking of an AJP service (Apache JServ Protocol)

nmap -sV --script "ajp-*.nse" -iL ../target.txt
