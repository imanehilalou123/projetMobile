pipeline {
    agent any

    stages {

        stage('Clone') {
            steps {
                git 'https://github.com/imanehilalou123/projetMobile.git'
            }
        }


        stage('Docker Build') {
            steps {
                sh 'docker build -t SpringBootAppDeploy:1.0 .'
            }
        }

        stage('Docker Push') {
            steps {
                sh 'docker tag SpringBootAppDeploy:1.0 imanehl13/SpringBootAppDeploy:1.0'
                sh 'docker push imanehl13/SpringBootAppDeploy:1.0'
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                sh 'kubectl apply -f k8s/'
            }
        }
    }
}
