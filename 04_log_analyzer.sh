#!/bin/bash
# ============================================================
# Script 4: Log File Analyzer
# Author    : YASHWANT RAJ
# Reg No    : 24BCY10176
# University: VIT Bhopal University
# Course    : Open Source Software
# Usage     : ./04_log_analyzer.sh <logfile> [keyword]
# Example   : ./04_log_analyzer.sh /var/log/syslog error
# ============================================================

LOGFILE=$1
KEYWORD=${2:-"error"}   # Default keyword is "error" if not provided
COUNT=0

# Check if a filename argument was actually passed
if [ -z "$LOGFILE" ]; then
    echo "Usage: $0 <logfile> [keyword]"
    echo "Example: $0 /var/log/syslog warning"
    exit 1
fi

# Check if the specified file actually exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File '$LOGFILE' not found or is not a regular file."
    read -p "Press [Enter] to exit..."
    exit 1
fi

# Retry loop: wait if file exists but is empty (e.g. still being created)
RETRY=0
while true; do
    if [ -s "$LOGFILE" ]; then break; fi
    echo "Warning: '$LOGFILE' appears to be empty. Retrying in 2 seconds..."
    sleep 2
    RETRY=$((RETRY + 1))
    if [ $RETRY -ge 3 ]; then
        echo "File is still empty after $RETRY attempts. Exiting."
        read -p "Press [Enter] to exit..."
        exit 1
    fi
done

echo "================================================"
echo "Log File    : $LOGFILE"
echo "Keyword     : '$KEYWORD'"
echo "================================================"

# Read through the file line by line and count matches
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Total matches for '$KEYWORD': $COUNT"

# If there were matches, show the last 5 lines that matched
if [ $COUNT -gt 0 ]; then
    echo ""
    echo "--- Last 5 Matching Lines ---"
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
fi

echo ""
read -p "Press [Enter] to exit..."
