#!/bin/bash
# ============================================================
# Script 2: FOSS Package Inspector
# Author    : YASHWANT RAJ
# Reg No    : 24BCY10176
# University: VIT Bhopal University
# Course    : Open Source Software
# Usage     : ./02_package_inspector.sh
# ============================================================

PACKAGE="libreoffice"

echo "Checking installation status of: $PACKAGE"
echo "------------------------------------------"

# Check if the package is installed using dpkg or command -v
if dpkg -l "$PACKAGE" &>/dev/null || command -v soffice &>/dev/null; then
    echo "[FOUND] $PACKAGE is installed on this system."

    # Try to get version info via dpkg; fallback to soffice --version
    if command -v dpkg &>/dev/null && dpkg -s "$PACKAGE" &>/dev/null; then
        VERSION=$(dpkg -s "$PACKAGE" | grep '^Version' | awk '{print $2}')
        echo "Version: $VERSION"
    else
        soffice --version 2>/dev/null
        echo "(version retrieved via soffice binary)"
    fi
else
    echo "[NOT FOUND] $PACKAGE does not appear to be installed."
    echo "To install, run: sudo apt install libreoffice"
fi

echo ""
echo "--- FOSS Ecosystem Note ---"

# Use case statement to print context-specific messages
case $PACKAGE in
    libreoffice)
        echo "LibreOffice: A full office suite released under MPL v2.0."
        echo "It supports the open ODF standard and runs on Linux, macOS, and Windows."
        ;;
    apache2|httpd)
        echo "Apache: The open-source web server that helped build the modern internet."
        ;;
    mysql|mariadb)
        echo "MariaDB/MySQL: Open-source relational databases powering millions of apps."
        ;;
    git)
        echo "Git: The distributed VCS that made global code collaboration possible."
        ;;
    firefox)
        echo "Firefox: Still fighting for a free, private, and open web."
        ;;
    *)
        echo "$PACKAGE: A valued member of the open-source ecosystem."
        ;;
esac

echo ""
read -p "Press [Enter] to exit..."
