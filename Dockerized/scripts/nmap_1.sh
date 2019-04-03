#!/bin/bash
# Author: Aleksandr Krasnov


bash 1.sh & bash 1.sh >> results_nmap_1.txt&
mv results_nmap_1.txt ../results
