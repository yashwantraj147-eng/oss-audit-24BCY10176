#!/bin/bash
# Script 4: Log File Analyzer
# Author: YASHWANT RAJ | Reg: 24BCY10176

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

if [ -z "$LOGFILE" ]; then
    echo "Usage: $0 <logfile> [keyword]"
    echo "Example: $0 /var/log/syslog warning"
    exit 1
fi

if [ ! -f "$LOGFILE" ]; then
    echo "Error: File '$LOGFILE' not found."
    exit 1
fi

RETRY=0
while true; do
    if [ -s "$LOGFILE" ]; then break; fi
    echo "Warning: Log file is currently empty. Retrying in 2 seconds..."
    sleep 2
    RETRY=$((RETRY + 1))
    if [ $RETRY -ge 3 ]; then
        echo "Error: File still empty after 3 attempts. Exiting."
        exit 1
    fi
done

while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "--------------------------------------------"
echo "Log File  : $LOGFILE"
echo "Keyword   : '$KEYWORD'"
echo "Matches   : $COUNT lines found"
echo "--------------------------------------------"

if [ $COUNT -gt 0 ]; then
    echo "--- Last 5 Matching Lines ---"
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
fi
