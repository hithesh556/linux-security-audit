#!/bin/bash
echo "--- Security Audit: Human Users ---"
echo "Date: $(date)"

# In Linux, human users usually have IDs (UID) greater than 1000.
# We read /etc/passwd, look for UIDs >= 1000, and print the username.
awk -F: '$3 >= 1000 {print $1}' /etc/passwd

echo "--- End of Report ---"
