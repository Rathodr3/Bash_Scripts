#!/bin/bash

#####################################################
## Purpose: To create multiple users from a file    ##
## Author:  Rahul                                   ##
## Environment : Admin                             ##
## Date : 02-March-2023                            ##
#####################################################

# ANSI color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

USER_FILE="$1"

# Check if user filename is provided
if [ -z "$USER_FILE" ]; then
  echo -e "${RED}Mandatory: Please enter the user filename to create users.${NC}"
  exit 1
fi

# Check if the user file exists
if [ ! -f "$USER_FILE" ]; then
  echo -e "${RED}The file $USER_FILE does not exist.${NC}"
  exit 1
fi

# Process each user from the file
while IFS= read -r U; do
  ./Useradd.sh "$U"
done < "$USER_FILE"

echo -e "${GREEN}User creation process completed.${NC}"
