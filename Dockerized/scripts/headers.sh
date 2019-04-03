#!/bin/bash

nmap -sV --script http-headers.nse -iL ../target.txt
