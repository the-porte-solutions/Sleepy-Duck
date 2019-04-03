#!/bin/bash

nmap --script http-csrf.nse -iL ../target.txt
