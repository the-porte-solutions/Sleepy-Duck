#!/bin/bash

nmap --script http-slowloris-check.nse -iL ../target.txt
