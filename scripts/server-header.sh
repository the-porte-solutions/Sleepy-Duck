#!/bin/bash

nmap --script http-server-header.nse -iL ../target.txt
