#!/bin/bash

#####################################################
## Purpose : To check Disk Usage of system
## Author  : Rahul Rathod
## Team    : DevOps
## Date    : 02-March-2023
#####################################################

# ANSI color codes
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

CRITICAL_LEVEL=90

# Display header
echo -e "${GREEN}#####################################################${NC}"
echo -e "${GREEN}## Purpose : To check Disk Usage of system${NC}"
echo -e "${GREEN}## Author  : Rahul Rathod${NC}"
echo -e "${GREEN}## Team    : DevOps${NC}"
echo -e "${GREEN}## Date    : 02-March-2023${NC}"
echo -e "${GREEN}#####################################################${NC}"

# Check disk usage and display critical filesystems
df -H | awk '{print $5 " " $1}' | while read -r output; do
  USAGE=$(echo "$output" | awk '{print $1}' | cut -d'%' -f1)
  FSYSTEM=$(echo "$output" | awk '{print $2}')

  if [ "$USAGE" -ge "$CRITICAL_LEVEL" ]; then
    echo -e "${RED}CRITICAL Disk Usage for $FSYSTEM: $USAGE%${NC}"
  fi
done
