#!/bin/bash
# ============================================================
# Script 3: Disk and Permission Auditor
# Author    : YASHWANT RAJ
# Reg No    : 24BCY10176
# University: VIT Bhopal University
# Course    : Open Source Software
# ============================================================

# Array of directories to audit
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp" "/usr/lib/libreoffice")

echo "============================================"
echo "       Directory Audit Report"
echo "       Open Source Audit - YASHWANT RAJ"
echo "       Reg: 24BCY10176 | VIT Bhopal"
echo "============================================"

# Iterate over each directory using a for loop
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permission string, owner, and group with awk
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Get human-readable size with du, then cut to get just the number
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        # Get filesystem usage percentage with df and awk
        FS_USAGE=$(df -h "$DIR" 2>/dev/null | awk 'NR==2 {print $5}')

        echo ""
        echo "Directory  : $DIR"
        echo "Permissions: $PERMS"
        echo "Size       : $SIZE"
        echo "Disk Used  : $FS_USAGE"
        echo "--------------------------------------------"
    else
        echo ""
        echo "[SKIP] $DIR does not exist on this system."
        echo "--------------------------------------------"
    fi
done

# Check for LibreOffice user config directory specifically
LIBRE_CONF="$HOME/.config/libreoffice"
echo ""
echo "--- LibreOffice User Config Check ---"
if [ -d "$LIBRE_CONF" ]; then
    LIBRE_PERMS=$(ls -ld "$LIBRE_CONF" | awk '{print $1, $3, $4}')
    LIBRE_SIZE=$(du -sh "$LIBRE_CONF" 2>/dev/null | cut -f1)
    echo "Found    : $LIBRE_CONF"
    echo "Perms    : $LIBRE_PERMS"
    echo "Size     : $LIBRE_SIZE"
else
    echo "Config dir not found: $LIBRE_CONF"
    echo "(LibreOffice may not be installed, or has never been launched.)"
fi

echo ""
read -p "Press [Enter] to exit..."
