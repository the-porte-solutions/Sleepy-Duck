#!/bin/bash

nmap --script http-waf-detect -iL ../target.txt
