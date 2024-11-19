#!/bin/bash

#########################################
###### Purpose: To create a new user ####
###### Author: Rahul                 ####
###### Date: 24-02-2024              ####
###### Team: Admin                   ####
#########################################

# ANSI color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

NUSER="$1"

# Check if username is provided
if [ -z "$NUSER" ]; then
  echo -e "${RED}Please provide a username. It is mandatory.${NC}"
  exit 1
fi

# Check if the script is run as root
RUSER=$(whoami)
if [ "$RUSER" != "root" ]; then
  echo -e "${RED}You need to be root user to perform this action.${NC}"
  exit 1
fi

# Check if the user already exists
id "$NUSER" &> /dev/null
if [ $? -eq 0 ]; then
  echo -e "${RED}User $NUSER already exists. Please provide a different username.${NC}"
  exit 1
fi

# Create the new user
/sbin/adduser "$NUSER"

# Check if user creation was successful
if [ $? -eq 0 ]; then
  echo -e "${GREEN}The user $NUSER was successfully created.${NC}"
else
  echo -e "${RED}Failed to create user $NUSER.${NC}"
fi

