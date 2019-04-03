#!/bin/bash

nmap --script http-security-headers.nse -iL ../target.txt
