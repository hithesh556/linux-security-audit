#!/bin/bash
# Get the disk usage percentage (just the number)
USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

# If usage is greater than 80%
if [ $USAGE -gt 80 ]; then
    echo "Disk is critical ($USAGE%). Cleaning old logs..."
    # Find files in /var/log/myapp that are older than 7 days and delete them
    # WARNING: Be careful with rm command!
    # find /var/log/myapp -type f -mtime +7 -exec rm {} \;
    echo "Cleanup complete."
else
    echo "Disk is safe ($USAGE%)."
fi
