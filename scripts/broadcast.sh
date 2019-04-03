#!/bin/bash

nmap --script "broadcast-*".nse -iL ../target.txt
