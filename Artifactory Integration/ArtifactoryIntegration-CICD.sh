# Create Jenkins CICD Pipeline with Artifactory Integration for Build Artifact Management

ssh -i /Path/To/Your/KeyPair.pem AMIUserName@YourIPv4Address

chmod 600 /Path/To/Your/KeyPair.pem

git clone https://github.com/cloudacademy/devops-jenkins-artifactory.git
cd ./devops-jenkins-artifactory

docker info

docker ps -a 

cd ~/devops-jenkins-artifactory/
ls -l 

cat docker-compose.yml

docker pull jenkins/jenkins:lts
docker-compose up -d && docker-compose logs -f

docker ps -a

docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword
