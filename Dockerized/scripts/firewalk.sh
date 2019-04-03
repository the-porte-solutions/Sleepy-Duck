#!/bin/bash

# Tries to discover firewall rules using an IP TTL expiration technique known as firewalking.
# To determine a rule on a given gateway, the scanner sends a probe to a metric located behind the gateway, with a TTL one higher than the gateway.
# If the probe is forwarded by the gateway, then we can expect to receive an ICMP_TIME_EXCEEDED, reply from the gateway next hop router, or eventually the
# metric itself if it is directly connected to the gateway. Otherwise, the probe will timeout.

# It starts with a TTL equals to the distance to the target. If the probe timeout, then it is resent with a TTL decreased by one.
# If we get an ICMP_TIME_EXCEEDED, then the scan is over for this probe.

# Every "no-reply" filtered TCP and UDP ports are probed. As for UDP scans, this process can be quite slow if lots of ports are blocked by a gateway close to the scanner.
# Scan parameters can be controlled using the firewalk.* optional arguments.

nmap --script=firewalk --traceroute -iL ../target.txt

