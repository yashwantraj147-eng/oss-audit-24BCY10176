#!/bin/bash
# Script 1: System Identity Report
# Author: YASHWANT RAJ | Reg: 24BCY10176
# Course: Open Source Software | VIT Bhopal

STUDENT_NAME="YASHWANT RAJ"
REG_NUMBER="24BCY10176"
SOFTWARE_CHOICE="LibreOffice"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p 2>/dev/null || uptime)
DISTRO=$(uname -o)
HOME_DIR=$HOME
CURRENT_DATE=$(date '+%A, %d %B %Y %H:%M:%S')
HOSTNAME=$(hostname)
SHELL_INFO=$SHELL

echo "============================================"
echo "  Open Source Audit - $STUDENT_NAME"
echo "  Registration: $REG_NUMBER"
echo "  VIT Bhopal University"
echo "============================================"
echo "Software Chosen  : $SOFTWARE_CHOICE"
echo "Distribution     : $DISTRO"
echo "Kernel Version   : $KERNEL"
echo "Hostname         : $HOSTNAME"
echo "Current User     : $USER_NAME"
echo "Home Directory   : $HOME_DIR"
echo "Shell            : $SHELL_INFO"
echo "System Uptime    : $UPTIME"
echo "Date and Time    : $CURRENT_DATE"
echo "--------------------------------------------"
echo "License Note:"
echo "LibreOffice is distributed under MPLv2."
echo "This Linux system runs under the GPL license."
echo "============================================"
