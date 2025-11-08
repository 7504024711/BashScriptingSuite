#!/bin/bash
# ==========================================
# 🚀  System Maintenance Dashboard - Ritesh Nayak
# ==========================================

echo -e "\e[1;36m=============================================="
echo -e "🚀  System Maintenance Dashboard - Ritesh Nayak"
echo -e "==============================================\e[0m\n"

# Create/clear the report file
REPORT_FILE="system_report.txt"
> "$REPORT_FILE"

# 1️⃣ System Info
echo -e "\e[1;33m🧠 Gathering System Information...\e[0m"
./system_info.sh | tee -a "$REPORT_FILE"
echo -e "\n"

# 2️⃣ CPU Usage
echo -e "\e[1;33m⚙️ Checking CPU Usage...\e[0m"
./cpu_usage.sh | tee -a "$REPORT_FILE"
echo -e "\n"

# 3️⃣ Disk Usage
echo -e "\e[1;33m💽 Checking Disk Usage...\e[0m"
./disk_usage.sh | tee -a "$REPORT_FILE"
echo -e "\n"

# 4️⃣ Process Monitor
echo -e "\e[1;33m🧩 Checking Top Processes...\e[0m"
./process_monitor.sh | tee -a "$REPORT_FILE"
echo -e "\n"

# ✅ Summary
echo -e "\e[1;32m=============================================="
echo -e "✅ All system checks completed successfully!"
echo -e "📄 Report saved as: system_report.txt"
echo -e "==============================================\e[0m"
