#!/bin/bash

SOURCE_IP="${1:-192.168.56.102}"
THRESHOLD="${2:-3}"

COUNT=$(sudo grep -E "Failed password|Invalid user" /var/log/auth.log | grep -F "from $SOURCE_IP " | wc -l)

echo "Source IP: $SOURCE_IP"
echo "Failed SSH attempts: $COUNT"

if [ "$COUNT" -ge "$THRESHOLD" ]; then
  echo "ALERT: Repeated failed SSH logins detected."
  echo "MITRE ATT&CK: T1110 - Brute Force"
else
  echo "No alert: threshold is $THRESHOLD failed attempts."
fi
