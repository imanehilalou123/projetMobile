pipeline {
    agent any

    stages {

      stage('Docker Build') {
                  steps {
                      sh 'docker build -t SpringBootAppDeploy:1.0 .'
                  }
              }

       stage('Test Git') {
                    steps {
                        echo "Jenkins lit bien le Jenkinsfile !"
                    }
                }
    }
}
