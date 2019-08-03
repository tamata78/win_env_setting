#!/bin/bash

# setting dotfiles
cd; git clone git@github.com:tamata78/dotfiles.git

./dotfiles/dotfilesLink_only_bash.sh

# Set enhancd (directory transfer efficienty)
git clone http://github.com/b4b4r07/enhancd.git
source ~/enhancd/init.sh

# setup env where only bash can be used
cp -f dotfiles/.bash_profile_only .bash_profile
cp -f dotfiles/.bashrc_only .bashrc

if [ $? = 0 ]; then
  echo "complete linux env setting for windows"
else
  echo "fail linux env setting"
fi
