curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee   /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]   https://pkg.jenkins.io/debian-stable binary/ | sudo tee   /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
sudo apt install -y openjdk-11-jdk 
sudo apt install -y jenkins

#register the Jenkins service
sudo systemctl daemon-reload

#start the Jenkins service
sudo systemctl start jenkins

#verify Jenkins has started
sudo systemctl status jenkins

#retrieve the password for Jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

#retrieve your public IP address
curl ifconfig.me

#Go to your public IP on 8080
http://<publicIP>:8080

# Enter the password retrieved earlier

# Install suggested plugins

# Create First Admin User
