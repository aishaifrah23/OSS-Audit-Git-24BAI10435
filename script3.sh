#!/bin/bash

AUDIT_PATHS=("/etc" "/tmp" "$HOME" "/usr/bin")
echo "--- Hardening Audit: Path Permissions ---"

for ENTRY in "${AUDIT_PATHS[@]}"; do
    if [ -d "$ENTRY" ]; then
        MODE_RAW=$(ls -ld "$ENTRY" | cut -c1-10)
        SUPERVISOR=$(ls -ld "$ENTRY" | awk '{print $3}')
        
        if [[ "$MODE_RAW" == *"w"* && "$ENTRY" != "/tmp" ]]; then
            RISK_SCORE="[!] SECURITY RISK"
        else
            RISK_SCORE="[OK] HARDENED"
        fi
        
        echo "Path: $ENTRY | Owner: $SUPERVISOR | Status: $RISK_SCORE"
    else
        echo "Path: $ENTRY | Status: UNREACHABLE"
    fi
done