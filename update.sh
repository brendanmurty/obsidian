# Setup the message colour characters

blue="\033[0;34m"
green="\033[0;32m"
yellow="\033[0;33m"
red="\033[0;31m"
end="\033[0m"

# Location of the Obsidian vault configuration directory

CONFIG_DIR=$HOME"/Notes/.obsidian"

# Location of the config directory

UPDATE_DIR="./config"

# Ask for confirmation from the user before continuing

read -p "$(echo -e $blue"This script will update your config files here from your Obsidian configuration directory at "$CONFIG_DIR". Continue this process? (y/n) "$end)" ANSWER
if [ "$ANSWER" != "y" ]; then
  echo -e "${red}User cancelled, restore aborted.${end}"
  exit 1
fi

# Backup current config files

echo -e "${yellow}Updating current config from files in $CONFIG_DIR"

mkdir -p $CONFIG_DIR

rm -rf $UPDATE_DIR
mkdir -p $UPDATE_DIR
cp -r $CONFIG_DIR/* $UPDATE_DIR

# Done

echo -e "${green}Done. You'll now need to review and commit these updates manually.${end}"