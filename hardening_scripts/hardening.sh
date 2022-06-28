#!/bin/bash
#Copy sshd_config 
sudo cp sshd_config /etc/ssh/sshd_config

#Install google authenticator
sudo apt install libpam-google-authenticator -y

#Add line to pam
sudo echo "auth required pam_google_authenticator.so" >> /etc/pam.d/sshd

#Reload ssh
sudo systemctl restart sshd.service
