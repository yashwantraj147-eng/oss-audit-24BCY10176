#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: YASHWANT RAJ | Reg: 24BCY10176

PACKAGE="libreoffice"

echo "--- FOSS Package Inspector ---"
echo "Checking package: $PACKAGE"
echo ""

if dpkg -l "$PACKAGE" &>/dev/null || command -v "$PACKAGE" &>/dev/null; then
    echo "[INSTALLED] $PACKAGE is present on this system."
    if command -v dpkg &>/dev/null && dpkg -s "$PACKAGE" &>/dev/null; then
        echo "Package Details:"
        dpkg -s "$PACKAGE" | grep -E '^Version|^Description|^Status' | head -n 3
    else
        echo "Version: $($PACKAGE --version 2>/dev/null | head -1)"
    fi
else
    echo "[NOT INSTALLED] $PACKAGE was not found on this system."
    echo "To install: sudo apt install libreoffice"
fi

echo ""
case $PACKAGE in
    libreoffice) echo "LibreOffice: A free office suite that replaced proprietary tools for millions worldwide." ;;
    git)         echo "Git: The version control tool that powers modern software collaboration." ;;
    apache2)     echo "Apache: The web server that helped build the open internet." ;;
    firefox)     echo "Firefox: A browser fighting for an open, private, user-controlled web." ;;
    *)           echo "$PACKAGE: A valued member of the open source ecosystem." ;;
esac
