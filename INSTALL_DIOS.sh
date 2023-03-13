#!/bin/bash

# --------------------------------------------------------------------------------------------------
# Copyright (C) 2023 MARIUS KOPP
# --------------------------------------------------------------------------------------------------

# Define color variables for displaying colored text
BGBLACK='\033[40m'
BGBLUE='\033[44m'
BGCYAN='\033[46m'
BGGREEN='\033[42m'
BGPURPLE='\033[45m'
BGRED='\033[41m'
BGWHITE='\033[47m'
BGYELLOW='\033[43m'
BLACK='\033[0;30m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
GREEN='\033[0;32m'
NOCOLOR='\033[0m'
PURPLE='\033[0;35m'
RED='\033[0;31m'
WHITE='\033[0;37m'
YELLOW='\033[0;33m'

# Function to display banner
display_banner() {
  echo -e "${BGWHITE}"
  echo " █▀▄ █ ▄▀▄ ▄▀▀    ██▄ █ █ █ █   █▀▄    ▄▀▄ █ "
  echo " █▄▀ █ ▀▄▀ ▄█▀    █▄█ ▀▄█ █ █▄▄ █▄▀    █▀█ █ "
  echo -e "${NOCOLOR}"
  echo "INSTALLER"
  echo ""
}

# Function to install DIOS
install_dios() {
  echo -e "${RED}INSTALLING...${NOCOLOR}"

  # Remove existing DIOS directory if present
  if [ -d ~/dios ]; then
    rm -rf ~/dios
  fi

  # Clone DIOS from Github
  mkdir ~/dios && cd ~/dios
  git clone https://github.com/DEV-ICE-SOFTWARE-TECHNOLOGIES/DIOS .

  # Execute DIOS.sh script with '-i' flag
  bash ./DIOS.sh -i
}

# Main script starts here
set -euv

display_banner

install_dios
