#!/bin/bash
# ⚙️ System Information Script
# Author: Ritesh Nayak

BLUE=$(tput setaf 6)
GREEN=$(tput setaf 2)
RESET=$(tput sgr0)

echo "${BLUE}=============================================="
echo "           ⚙️ System Information"
echo "==============================================${RESET}"

echo "Hostname: $(hostname)"
echo "OS: $(lsb_release -d | cut -f2)"
echo "Kernel: $(uname -r)"
echo "Uptime: $(uptime -p)"
echo "Logged in users: $(who | wc -l)"
echo "Memory usage:"
free -h

echo "${BLUE}----------------------------------------------"
echo "${GREEN}✅ System information fetched successfully!${RESET}"
