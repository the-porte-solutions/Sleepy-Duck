#!/bin/bash

nmap --script http-stored-xss.nse -iL ../target.txt
