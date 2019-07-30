# win_env_setting

## inst git bash
open command pronpt,  the following command execute
```
C:\Windows\System32\cmd.exe /c "mkdir C:\Users\%username%\work\sandbox & cd C:\Users\%username%\work\sandbox"
```
access to https://github.com/tamata78/win_env_setting/archive/master.zip

## inst windows apps
- comment out apps that you don't install in chocolatey/packages.config
- open command pronpt by admin authority
- exec chocolatey/chocolatey-install-all.bat

##  set home and current dir for git bash
open command pronpt,  the following command execute
```
C:\Windows\System32\cmd.exe /c "set HOME=C:\Users\%username%\work&"C:\Program Files\Git\bin\sh.exe" --login -i"
%HOMEDRIVE%%HOMEPATH%\work
```
windows10 「Win + S」move search window. git bash run

# apply name, email to git config
```
$ pwd
$ git config --global user.name "tamata78"
$ git config --global user.email "5101956+tamata78@users.noreply.github.com"
$ git config -l
```

# Github ssh setting
```
$ ssh-keygen -t rsa -b 4096 -C '5101956+tamata78@users.noreply.github.com'

# copy pub_key to clipboad, set pub_key to github ssh key setting
$ clip < ~/.ssh/id_rsa.pub

# check connect with github
$ ssh -T git@github.com
```
## set dotfiles, enhancd
./win_env_setting/setup/win-setup.sh

