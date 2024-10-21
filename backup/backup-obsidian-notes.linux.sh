#!/usr/bin/env bash

BACKUP_DIR=~/Backups
SOURCE_DIR=~/Notes

BACKUP_FILE=obsidian_$(date +%Y%m%d-%H%M%S).zip

BACKUP_PATH=$BACKUP_DIR/$BACKUP_FILE

if [ ! -d $SOURCE_DIR ]; then
  echo "Error - Notes source directory ($SOURCE_DIR) not found, please check the path in the script"
  exit 1
fi

echo "Starting backup of your Notes in '$SOURCE_DIR' to '$BACKUP_PATH'..."

mkdir -p $BACKUP_DIR

cd $SOURCE_DIR

zip -qr $BACKUP_PATH .

if [[ $? -eq 0 ]]; then
  echo "Completed - Backup saved to '$BACKUP_PATH'."
else
  echo "Error - Backup failed, please check output above."
fi

