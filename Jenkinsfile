pipeline {
    agent any

    stages {

      stage('Docker Build') {
                  steps {
                      sh 'docker build -t springbootappdeploy:1.0 .'
                  }
              }
       stage('Docker run container') {
                        steps {
                            sh 'docker run -d -p 8080:8080 --name jenkins springbootappdeploy:1.0 .'
                        }
                    }

       stage('Test Git') {
                    steps {
                        echo "Jenkins lit bien le Jenkinsfile !"
                    }
                }
    }
}
