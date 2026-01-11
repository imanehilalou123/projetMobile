pipeline {
    agent any

    stages {

        stage('Docker Build') {
            steps {
                sh 'docker build -t imanehl13/springbootappdeploy:latest .'
            }
        }

        stage('Docker Push') {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'docker_hub_credentials') {
                        sh 'docker push imanehl13/springbootappdeploy:latest'
                    }
                }
            }
        }

        stage('Kubernetes Deploy') {
            steps {
                sh 'kubectl apply -f k8s/'
            }
        }
    }
}
