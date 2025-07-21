#!/bin/bash
echo "[+] Killing user_app container..."
echo "[CHAOS] Running app killing test at $(date)" >> /var/log/user_app.log
docker kill user_app || echo "user_app not running"
echo "[CHAOS] Completed app killing test at $(date)" >> /var/log/user_app.log