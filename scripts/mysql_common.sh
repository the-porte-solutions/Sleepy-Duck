#!/bin/bash
# a script for checking the most common sql concerns
nmap --script "mysql-*" -iL ../target.txt
