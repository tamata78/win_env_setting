#  win_env_setting

## 1 inst git bash
open command pronpt,  the following command execute
```
mkdir C:\Users\%username%\work\sandbox && C:\Users\%username%\work\sandbox
```
access to https://github.com/tamata78/win_env_setting/archive/master.zip

## 2 inst windows apps
- comment out apps that you don't install in chocolatey/packages.config
- open command pronpt by admin authority
- exec chocolatey/chocolatey-install-all.bat

## 3 set home and current dir for git bash
```
The dialog "Git Bash Properties" opens.
Open the "Shortcuts" tab of the dialog.
In the "Link to(T)" field, select 「C:\Windows\System32\cmd.exe /c "set HOME=C:\Users\%username%\work&"C:\Program Files\Git\bin\sh.exe" --login -i"」
Set the "Working folder(S)" field to "%HOMEDRIVE%%HOMEPATH%\work".
Click the [Apply] button.
```
windows10 「Win + S」move search window. git bash run

## 4 apply name, email to git config
```
$ pwd
$ git config --global user.name "tamata78"
$ git config --global user.email "5101956+tamata78@users.noreply.github.com"
$ git config -l
```

## 5 Github ssh setting
```
$ ssh-keygen -t rsa -b 4096 -C '5101956+tamata78@users.noreply.github.com'

# copy pub_key to clipboad, set pub_key to github ssh key setting
$ clip < ~/.ssh/id_rsa.pub

# check connect with github
$ ssh -T git@github.com
```
## 6 set dotfiles, enhancd
./win_env_setting/setup/win-setup.sh

# delete setting env
open command pronpt,  the following command execute
```
./win_env_setting/close/close_dev_env.bat
```
