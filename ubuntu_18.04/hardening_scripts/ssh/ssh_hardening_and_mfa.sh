###In Progress####

#!/bin/bash
#Copy sshd_config 
sudo cp sshd_config /etc/ssh/sshd_config

#SSHD
#Edit /etc/ssh/sshd_config
#Use PAM

#Challenge

#Add authentication method


#MFA
#Install goolge-authenticator
sudo apt install libpam-google-authenticator -y
#Edit /etc/pam.d/sshd
sudo echo "auth required pam_google_authenticator.so" >> /etc/pam.d/sshd



#Reload ssh
sudo systemctl restart sshd.service
