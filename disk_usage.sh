#!/bin/bash
# 💽 Disk Usage Monitoring Script
# Author: Ritesh Nayak

BLUE=$(tput setaf 6)
GREEN=$(tput setaf 2)
RESET=$(tput sgr0)

echo "${BLUE}=============================================="
echo "           💽 Disk Usage Information"
echo "==============================================${RESET}"

df -h --output=source,size,used,avail,pcent | grep -v tmpfs

echo "${BLUE}----------------------------------------------"
echo "${GREEN}✅ Disk usage data fetched successfully!${RESET}"
