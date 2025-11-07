#!/bin/bash
# ===============================================
# CPU Usage Monitor Script
# Author: Ritesh Nayak
# ===============================================

echo "=============================================="
echo "           CPU Usage Information"
echo "=============================================="

# Check if mpstat is installed
if ! command -v mpstat &> /dev/null
then
    echo "mpstat not found! Installing sysstat..."
    sudo apt-get update -y >/dev/null 2>&1
    sudo apt-get install sysstat -y >/dev/null 2>&1
fi

# Display CPU usage summary
mpstat 1 1 | awk '/Average:/ && $12 ~ /[0-9.]+/ {print 100 - $12 "% CPU used"}'

echo "----------------------------------------------"
echo "✅ CPU usage data fetched successfully!"

