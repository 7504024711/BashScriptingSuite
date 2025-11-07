#!/bin/bash
# ===============================================
# Bash Scripting Suite - Automated System Report
# Author: Ritesh Nayak
# ===============================================

OUTPUT_FILE="system_report.txt"

echo "==============================================" > $OUTPUT_FILE
echo "         🧠 BASH SCRIPTING SUITE REPORT" >> $OUTPUT_FILE
echo "==============================================" >> $OUTPUT_FILE
date >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

# ------------------------------


# ------------------------------
# 2️⃣ CPU Usage
# ------------------------------
echo "==============================================" >> $OUTPUT_FILE
echo "🧮 CPU USAGE DETAILS" >> $OUTPUT_FILE
echo "----------------------------------------------" >> $OUTPUT_FILE
bash cpu_usage.sh >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

# ------------------------------
# 3️⃣ Disk Usage
# ------------------------------
echo "==============================================" >> $OUTPUT_FILE
echo "💽 DISK USAGE DETAILS" >> $OUTPUT_FILE
echo "----------------------------------------------" >> $OUTPUT_FILE
bash disk_usage.sh >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

# ------------------------------

# ------------------------------
# ✅ Final Message
# ------------------------------
echo "==============================================" >> $OUTPUT_FILE
echo "✅ REPORT GENERATED SUCCESSFULLY!" >> $OUTPUT_FILE
echo "==============================================" >> $OUTPUT_FILE

echo ""
echo "✨ All scripts executed successfully!"
echo "📄 System report saved to: $OUTPUT_FILE"
echo ""

