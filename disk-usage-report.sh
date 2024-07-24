#!/bin/bash

# Define the report file and the recipient email address
REPORT="/tmp/disk_usage_report.txt"
EMAIL="arunnine.ch@gmail.com"

# Generate a disk usage report
df -h > $REPORT

# Send the report via email
mail -s "Disk Usage Report" $EMAIL < $REPORT

# Print a message indicating the report has been sent
echo "Disk usage report sent to $EMAIL."
