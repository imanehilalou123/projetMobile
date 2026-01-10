pipeline {
    agent any
     environment {
            DOCKER_USER = credentials("imanehl13")
            DOCKER_PASS = credentials('Imane-Hilalou1')
        }
    stages {

      stage('Docker Build') {
                  steps {
                      sh 'docker build -t springbootappdeploy:1.0 .'
                  }
              }
      stage('Docker Login') {
                  steps {
                      sh 'echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin'
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
