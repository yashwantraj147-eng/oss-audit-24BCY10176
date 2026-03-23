#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: YASHWANT RAJ | Reg: 24BCY10176

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp" "/usr/lib/libreoffice" "/usr/share/libreoffice")

echo "============================================"
echo " Directory Audit Report"
echo " $(date '+%d %B %Y %H:%M')"
echo "============================================"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        FS_USAGE=$(df -h "$DIR" 2>/dev/null | awk 'NR==2 {print $5}')
        echo "$DIR"
        echo "  Permissions : $PERMS"
        echo "  Size        : $SIZE"
        echo "  Disk Used   : $FS_USAGE"
        echo ""
    else
        echo "$DIR - not found on this system"
        echo ""
    fi
done

LO_CONFIG="$HOME/.config/libreoffice"
echo "--- LibreOffice User Config Check ---"
if [ -d "$LO_CONFIG" ]; then
    LO_PERMS=$(ls -ld "$LO_CONFIG" | awk '{print $1, $3, $4}')
    LO_SIZE=$(du -sh "$LO_CONFIG" 2>/dev/null | cut -f1)
    echo "Config found at: $LO_CONFIG"
    echo "Permissions: $LO_PERMS | Size: $LO_SIZE"
else
    echo "LibreOffice config directory not found at $LO_CONFIG"
fi
