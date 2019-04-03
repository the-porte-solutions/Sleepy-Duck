#!/bin/bash
# a script for commond http concerns
nmap --script "http-*" -iL ../target.txt
