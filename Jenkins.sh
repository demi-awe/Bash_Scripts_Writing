#Install Jenkins
echo "Installing Jenkins ....."
sudo apt install jenkins -y

#start Jenkins Service
#echo "Starting Jenkins...."
#sudo systemctl status jenkins.service

#Check Jenkins Status
#echo "Jenkins status..."
#sudo systemctl status jenkins

#Allow firewall
echo "Allow firewall..."
sudo ufw allow 8080

#Check new rules
sudo ufw status
echo "Checking new rules....."

#if ufw is disabled
sudo ufw allow OpenSSH
sudo ufw enable -y

sudo ufw allow 8080

#View password
echo "Jenkins adminpassword..."
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
