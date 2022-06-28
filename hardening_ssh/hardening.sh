#!/bin/bash
#Install google authenticator
sudo apt install libpam-google-authenticator

#Add line to pam
sudo echo "auth required pam_google_authenticator.so" /etc/pam.d/sshd

#Reaload ssh
sudo systemctl restart sshd.service

#Copy sshd_config 
sudo cp sshd_config /etc/ssh/sshd_config

#Reload ssh
sudo systemctl restart sshd.service
