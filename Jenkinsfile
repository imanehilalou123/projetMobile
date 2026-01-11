pipeline {
    agent any

    stages {

        stage('Docker Push') {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'docker_hub_credentials') {
                        docker.build("imanehl13/springbootappdeploy")
                              .push("latest")
                    }
                }
            }
        }

        stage('K8s Deploy') {
            steps {
                sh 'kubectl apply -f k8s/deployement.yml'
            }
        }
        stage('Show URL') {
            steps {
                echo 'Use this command locally to access the app: minikube service monapp-service --url'
            }
        }

    }
}
