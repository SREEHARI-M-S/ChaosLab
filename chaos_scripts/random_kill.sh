#!/bin/bash
echo "[+] Randomly killing one container..."
echo "[CHAOS] Running random container kill test at $(date)" >> /var/log/user_app.log
container=$(docker ps --format '{{.Names}}' | shuf -n 1)
echo "[!] Killing $container..."
docker kill "$container"
echo "[CHAOS] Completed random container kill test at $(date)" >> /var/log/user_app.log
