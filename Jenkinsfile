pipeline {
    agent any

    stages {

      stage('Docker Build') {
                  steps {
                      sh 'docker build -t springbootappdeploy:1.0 .'
                  }
              }

       stage('Test Git') {
                    steps {
                        echo "Jenkins lit bien le Jenkinsfile !"
                    }
                }
    }
}
