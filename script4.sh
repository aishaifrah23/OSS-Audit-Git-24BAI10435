#!/bin/bash

SOURCE_LOG=$1
TARGET_STRING=${2:-"denied"}
HIT_COUNT=0

if [ ! -f "$SOURCE_LOG" ]; then
    echo "Forensic Error: $SOURCE_LOG is inaccessible."
    exit 1
fi

while read -r DATA_LINE; do
    if echo "$DATA_LINE" | grep -iq "$TARGET_STRING"; then
        HIT_COUNT=$((HIT_COUNT + 1))
    fi
done < "$SOURCE_LOG"

echo "Forensic Result: '$TARGET_STRING' found $HIT_COUNT times."
echo "Recent Forensic Indicators:"
grep -i "$TARGET_STRING" "$SOURCE_LOG" | tail -n 2