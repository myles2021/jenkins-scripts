ssh -i /Path/To/Your/KeyPair.pem AMIUserName@YourIPv4Address

chmod 600 /Path/To/Your/KeyPair.pem

git clone https://github.com/cloudacademy/devops-jenkins-docker-splunk.git
cd ./devops-jenkins-docker-splunk

docker info

docker ps -a 

cd ~/devops-jenkins-docker-splunk/
ls -l 

cat docker-compose.yml

docker pull jenkins/jenkins:lts
docker-compose up -d && docker-compose logs -f

docker ps -a --format "table {{.Names}}\t{{.Status}}"

docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword
