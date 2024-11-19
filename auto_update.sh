#!/bin/bash

#################################################
###### Purpose: To Update and Upgrade system ####
###### Author: Rahul                         ####
###### Date: 28-02-2024                      ####
#################################################
#################################################

# ANSI color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Start of script
echo -e "${BLUE}"Starting the system update and upgrade process..."${NC}"

# Update package lists
sudo apt update && echo -e "${GREEN}"Package list updated successfully!"${NC}" || { echo -e "${GREEN}"Failed to update package list!"${NC}"; exit 1; }

# Upgrade packages
sudo apt upgrade -y && echo -e "${GREEN}"Packages upgraded successfully!"${NC}" || { echo -e "${GREEN}"Failed to upgrade packages!"${NC}"; exit 1; }