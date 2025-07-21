#!/bin/bash
echo "[+] Running Memory Hog..."
echo "[CHAOS] Running Memory Hog test at $(date)" >> /var/log/user_app.log
tail /dev/zero | head -c 500M | cat > /dev/null &
MEM_PID=$!
sleep 10
kill $MEM_PID
echo "[CHAOS] Completed Memory Hog test at $(date)" >> /var/log/user_app.log