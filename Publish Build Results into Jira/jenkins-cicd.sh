ssh -i ~/.ssh/463051198833.pem ec2-user@52.37.205.66

chmod 600 ~/.ssh/463051198833.pem 

git clone https://github.com/cloudacademy/devops-jenkins-jira
cd ./devops-jenkins-jira

docker pull jenkins/jenkins:lts
docker-compose up -d && docker-compose logs -f

docker ps -a --format "table {{.Names}}\t{{.Status}}"

docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword

# go to Jira Core at http://PUBLIC_IP_CICD_PLATFORM_INSTANCE:8888

# On the Jira setup screen, select Set it up for me and click Continue to MyAtlassian. This will redirect you to the Atlassian website where you will be required to register and log in to generate a time bombed licence key that will be required to activate your Jira instance

