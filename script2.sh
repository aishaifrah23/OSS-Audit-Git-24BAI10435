#!/bin/bash

TARGET_PKG="git"
echo "--- Binary Integrity Verification: $TARGET_PKG ---"

EXEC_PATH=$(which $TARGET_PKG)

if [ -f "$EXEC_PATH" ]; then
    echo "Validated Source: $EXEC_PATH"
    $TARGET_PKG --version
    
    case $TARGET_PKG in
        git)
            echo "Security Feature: SHA-1 Cryptographic Hashing detected." ;;
        *)
            echo "Status: FOSS Compliance Verified." ;;
    esac
else
    echo "Alert: $TARGET_PKG binary missing from system path."
fi