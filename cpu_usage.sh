#!/bin/bash
# 🧠 CPU Usage Monitoring Script
# Author: Ritesh Nayak

BLUE=$(tput setaf 6)
GREEN=$(tput setaf 2)
RESET=$(tput sgr0)

echo "${BLUE}=============================================="
echo "           🧠 CPU Usage Information"
echo "==============================================${RESET}"

if command -v mpstat &> /dev/null; then
    mpstat | tail -n 5
else
    echo "mpstat not found! Installing sysstat package..."
    sudo apt install -y sysstat
    mpstat | tail -n 5
fi

echo "${BLUE}----------------------------------------------"
echo "${GREEN}✅ CPU usage data fetched successfully!${RESET}"
