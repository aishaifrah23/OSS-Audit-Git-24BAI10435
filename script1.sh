#!/bin/bash

OS_TYPE=$(uname -o)
SYS_KERNEL=$(uname -r)
CURRENT_ACTOR=$(whoami)
STABILITY_TIME=$(uptime -p)

echo "--- OSS SECURITY AUDIT: BASELINE ---"
echo "Researcher Identification: Aisha Ifrah (24BAI10435)"
echo "Integrity Layer: $SYS_KERNEL ($OS_TYPE)"
echo "Active Session: $CURRENT_ACTOR"
echo "Uptime Metric: $STABILITY_TIME"

if [ "$EUID" -ne 0 ]; then
  echo "AUDIT LEVEL: Restricted/User-Mode"
else
  echo "AUDIT LEVEL: Administrative/Elevated"
fi

echo "Environment validation complete for Git Case Study."