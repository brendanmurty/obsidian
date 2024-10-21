#!/usr/bin/env bash

BACKUP_DIR=~/Backups
SOURCE_DIR=~/Notes

BACKUP_FILE=obsidian_$(date +%Y%m%d-%H%M%S).zip

BACKUP_PATH=$BACKUP_DIR/$BACKUP_FILE

# Setup the message colour characters

blue="\033[0;34m"
green="\033[0;32m"
yellow="\033[0;33m"
red="\033[0;31m"
end="\033[0m"

# Exit if the source directory doesn't exist

if [ ! -d $SOURCE_DIR ]; then
  echo -e "${red}Error - Notes source directory ($SOURCE_DIR) not found, please check the path in the script${end}"
  exit 1
fi

# Start backup process

echo -e "${blue}Starting backup of your Notes in '$SOURCE_DIR' to '$BACKUP_PATH'...${end}"

mkdir -p $BACKUP_DIR
cd $SOURCE_DIR
zip -qr $BACKUP_PATH .

# Done, print the relevant message

if [[ $? -eq 0 ]]; then
  echo -e "${green}Completed - Backup saved to '$BACKUP_PATH'.${end}"
else
  echo -e "${red}Error - Backup failed, please check output above.${end}"
fi

