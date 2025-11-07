#!/bin/bash
# ===============================================
# Disk Usage Report Script
# Author: Ritesh Nayak
# ===============================================

echo "=============================================="
echo "           Disk Usage Information"
echo "=============================================="

# Display disk usage in human-readable format
df -h --total | awk 'NR==1 || /total/ || /Filesystem/ {print $0}'

echo "----------------------------------------------"
echo "✅ Disk usage data fetched successfully!"

