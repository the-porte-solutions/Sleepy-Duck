#!/bin/bash

nmap --script http-slowloris -iL ../target.txt
