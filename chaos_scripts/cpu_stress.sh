#!/bin/bash
echo "[+] Running CPU stress..."
echo "[CHAOS] Running CPU stress test at $(date)" >> /var/log/user_app.log
apt-get update && apt-get install -y stress
stress --cpu 2 --timeout 20
echo "[CHAOS] Completed CPU stress test at $(date)" >> /var/log/user_app.log