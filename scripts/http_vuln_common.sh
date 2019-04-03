#!/bin/bash

nmap --script "http-vuln-*" -iL ../target.txt
