pipeline {
    agent any

    stages {

      stage('Docker Build') {
                  steps {
                      sh 'docker build -t springbootappdeploy:1.0 .'
                  }
              }
      stage('Docker Push') {
                  steps {
                      sh 'docker tag springbootappdeploy:1.0 imanehl13/springbootappdeploy:1.0'
                      sh 'docker push imanehl13/springbootappdeploy:1.0'
                  }
              }

       stage('Test Git') {
                    steps {
                        echo "Jenkins lit bien le Jenkinsfile !"
                    }
                }
    }
}
