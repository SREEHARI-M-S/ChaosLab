#!/bin/bash
echo "[+] Adding 300ms network delay..."
echo "[CHAOS] Running Network delay test at $(date)" >> /var/log/user_app.log
apt-get update && apt-get install -y iproute2
tc qdisc add dev eth0 root netem delay 300ms
sleep 10
tc qdisc del dev eth0 root netem
echo "[CHAOS] Completed Network delay test at $(date)" >> /var/log/user_app.log