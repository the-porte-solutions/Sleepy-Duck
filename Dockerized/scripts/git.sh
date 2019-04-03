#!/bin/bash

nmap --script http-git.nse -iL ../target.txt
