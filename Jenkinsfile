pipeline {
    agent any
      environment {
             // Récupère le username et le password/token de Docker Hub depuis Jenkins
             DOCKER_HUB_CRED = credentials('docker_hub_credentials')
         }
    stages {

       stage('Test Git') {
                    steps {
                    echo $DOCKER_HUB_CRED_USR
                        echo "Jenkins lit bien le Jenkinsfile !"
                    }
                }
    }
}
