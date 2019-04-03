#!/bin/bash

nmap --script http-sitemap-generator -iL ../target.txt
