#!/bin/sh

sudo chown jboss:jboss /home/ec2-user/downloads/elvo.war
sudo cp -p /home/ec2-user/downloads/elvo.war /usr/local/jboss/standalone/deployments/

echo -n "jboss service restart [y/n]> "

while :
  do
    read INPUT
    case "$INPUT" in
      "y" ) sudo service jboss restart
            echo "jboss restart"
            break ;;
      "n" ) echo "Canceled."
            break ;;
      * )   echo "please input [y/n]" ;;
    esac
  done
