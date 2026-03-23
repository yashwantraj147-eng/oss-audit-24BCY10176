#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: YASHWANT RAJ | Reg: 24BCY10176

clear
echo "========================================"
echo " Open Source Manifesto Generator"
echo " VIT Bhopal | OSS Capstone Project"
echo "========================================"
echo ""
echo "Answer three questions to generate your personal open source manifesto."
echo ""

read -p "1. Name one open-source tool that has genuinely helped you: " TOOL
read -p "2. In one word, what does 'freedom' mean to you in tech? " FREEDOM
read -p "3. What would you build and share freely if you could? " BUILD

DATE=$(date '+%d %B %Y')
AUTHOR=$(whoami)
OUTPUT="manifesto_${AUTHOR}_$(date +%Y%m%d).txt"

{
    echo "========================================"
    echo " MY OPEN SOURCE MANIFESTO"
    echo " Author: $AUTHOR"
    echo " Date  : $DATE"
    echo "========================================"
    echo ""
    echo "I believe in open source software because tools like $TOOL"
    echo "have shown me what is possible when knowledge is shared freely."
    echo ""
    echo "To me, freedom in technology means $FREEDOM - and that is precisely"
    echo "what the open source movement has fought to protect and expand."
    echo ""
    echo "If I could contribute something to the world, I would build $BUILD"
    echo "and release it under an open license for anyone to use, improve, and share."
    echo ""
    echo "The internet was built on open source. The future will be too."
    echo "========================================"
} > "$OUTPUT"

echo ""
echo "Your manifesto has been saved to: $OUTPUT"
echo ""
cat "$OUTPUT"
