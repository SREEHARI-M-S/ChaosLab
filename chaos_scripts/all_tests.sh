#!/bin/bash
echo "[+] Running all chaos tests sequentially..."
echo "[CHAOS] Running all tests test at $(date)" >> /var/log/user_app.log
./chaos_scripts/cpu_stress.sh
./chaos_scripts/disk_fill.sh
./chaos_scripts/memory_hog.sh
./chaos_scripts/network_delay.sh
./chaos_scripts/random_kill.sh
./chaos_scripts/kill_app.sh
echo "[CHAOS] Completed all tests test at $(date)" >> /var/log/user_app.log