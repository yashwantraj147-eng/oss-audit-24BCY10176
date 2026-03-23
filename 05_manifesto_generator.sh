#!/bin/bash
# ============================================================
# Script 5: Open Source Manifesto Generator
# Author    : YASHWANT RAJ
# Reg No    : 24BCY10176
# University: VIT Bhopal University
# Course    : Open Source Software
# ============================================================

echo "================================================"
echo "    Open Source Manifesto Generator"
echo "    YASHWANT RAJ | 24BCY10176 | VIT Bhopal"
echo "================================================"
echo "Answer three questions to generate your manifesto."
echo ""

# Collect user responses interactively
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Generate a timestamped, unique filename
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami)_$(date +%Y%m%d).txt"

# Write the manifesto to the file using redirection
echo "### My Open Source Manifesto ###" > "$OUTPUT"
echo "Student: YASHWANT RAJ | Reg: 24BCY10176 | VIT Bhopal University" >> "$OUTPUT"
echo "Date: $DATE" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "I believe in open source because tools like $TOOL make my work easier," >> "$OUTPUT"
echo "faster, and accessible to people who otherwise couldn't afford them." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "To me, true freedom means $FREEDOM — and that is exactly what open source" >> "$OUTPUT"
echo "tries to protect: the freedom to use, study, modify, and share software." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "If I had the resources and skills to contribute, I would build $BUILD" >> "$OUTPUT"
echo "and release it freely, so the next person doesn't have to start from zero." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "Standing on the shoulders of giants is how all progress works." >> "$OUTPUT"
echo "Open source is how we make sure the shoulders stay accessible to everyone." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "--- End of Manifesto ---" >> "$OUTPUT"

echo ""
echo "Manifesto saved to: $OUTPUT"
echo ""
echo "--- Preview ---"
cat "$OUTPUT"
echo ""
read -p "Press [Enter] to exit..."
