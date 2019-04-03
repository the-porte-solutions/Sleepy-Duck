#!/bin/bash

nmap --script=http-affiliate-id.nse -iL ../target.txt
