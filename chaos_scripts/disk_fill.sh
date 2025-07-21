#!/bin/bash
echo "[+] Running Disk Fill..."
echo "[CHAOS] Running Disk fill test at $(date)" >> /var/log/user_app.log
fallocate -l 100M tempfile || dd if=/dev/zero of=tempfile bs=1M count=100
sleep 10
rm -f tempfile
echo "[CHAOS] Completed Disk fill test at $(date)" >> /var/log/user_app.log