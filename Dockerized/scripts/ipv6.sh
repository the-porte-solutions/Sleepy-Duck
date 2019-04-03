#!/bin/bash


# Shows extra information about IPv6 addresses, such as embedded MAC or IPv4 addresses when available.
# Some IP address formats encode extra information; for example some IPv6 addresses encode an IPv4 address or MAC address.
# This script can decode these address formats:
# IPv4-compatible IPv6 addresses;
# IPv4-mapped IPv6 addresses;
# Teredo IPv6 addresses;
# 6to4 IPv6 addresses;
# IPv6 addresses using an EUI-64 interface ID;
# IPv4-embedded IPv6 addresses;
# IPv4-translated IPv6 addresses;
# ISATAP Modified EUI-64 IPv6 addresses

nmap -sS --script address-info.nse -iL ../target.txt
