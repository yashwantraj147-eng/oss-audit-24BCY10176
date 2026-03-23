#!/bin/bash
# ============================================================
# Script 1: System Identity Report
# Author    : YASHWANT RAJ
# Reg No    : 24BCY10176
# University: VIT Bhopal University
# Course    : Open Source Software
# Software  : LibreOffice
# ============================================================

STUDENT_NAME="YASHWANT RAJ"
REG_NUMBER="24BCY10176"
SOFTWARE_CHOICE="LibreOffice"

# Gather system information using command substitution
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p 2>/dev/null || uptime)
DISTRO=$(uname -o)
HOME_DIR=$HOME
CURRENT_DATE=$(date '+%d %B %Y, %I:%M %p')
HOSTNAME=$(hostname)
ARCH=$(uname -m)

echo "================================================"
echo "    Open Source Audit - $STUDENT_NAME"
echo "    Reg: $REG_NUMBER | VIT Bhopal University"
echo "================================================"
echo "Software Choice  : $SOFTWARE_CHOICE"
echo "Distribution     : $DISTRO"
echo "Kernel Version   : $KERNEL"
echo "Architecture     : $ARCH"
echo "Hostname         : $HOSTNAME"
echo "Current User     : $USER_NAME"
echo "Home Directory   : $HOME_DIR"
echo "Uptime           : $UPTIME"
echo "Date and Time    : $CURRENT_DATE"
echo "------------------------------------------------"
echo "License Note:"
echo "LibreOffice is distributed under the MPL v2.0 license."
echo "This Linux OS is distributed under the GPL v2 license."
echo "================================================"
echo ""
read -p "Press [Enter] to exit..."
