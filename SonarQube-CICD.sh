# Create a Jenkins CICD Pipeline with SonarQube Integration to perform Static Code Analysis

ssh -i /Path/To/Your/KeyPair.pem AMIUserName@YourIPv4Address

chmod 600 /Path/To/Your/KeyPair.pem

sudo yum install curl-devel
git clone https://github.com/cloudacademy/devops-jenkins-sonarqube.git
cd ./devops-jenkins-sonarqube

docker info

docker ps -a 

cd ~/devops-jenkins-sonarqube/
ls -l 

cat docker-compose.yml

docker pull jenkins/jenkins:lts
docker-compose up -d && docker-compose logs -f

docker ps -a

docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword

