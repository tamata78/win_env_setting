!#/bin/bash

# setting dotfiles
git clone git@github.com:tamata78/dotfiles.git

cd dotfiles
./dotfilesLink_only_bash.sh

# Set z tool(directory transfer efficienty)
cp -rp linuxCmd/z /usr/local/bin/

# Set PATH
echo "export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin" >> ~/.bash_profile
source ~/.bash_profile

if [ $? = 0 ]; then
  echo "complete linux env setting for windows"
else
  echo "fail linux env setting"
fi
