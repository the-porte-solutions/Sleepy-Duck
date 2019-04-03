#!/bin/bash
nmap --script "smb-*" -iL ../target.txt
