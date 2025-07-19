#!/bin/bash
echo "Adding network delay..."
tc qdisc add dev eth0 root netem delay 1000ms
sleep 10
tc qdisc del dev eth0 root netem