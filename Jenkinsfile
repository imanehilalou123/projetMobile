pipeline {
    agent any

    environment {
        IMAGE_NAME = "imanehl13/springbootappdeploy"
    }

    stages {
        stage('Docker Build') {
            steps {
                script {
                    // Build de l'image Docker et la stocke dans une variable
                    app = docker.build("${IMAGE_NAME}:${env.BUILD_NUMBER}")
                }
            }
        }

        stage('Docker Push') {
            steps {
                script {
                    // Push avec authentification via credentials Jenkins
                    docker.withRegistry('https://registry.hub.docker.com', 'docker_hub_credentials') {
                        app.push("${env.BUILD_NUMBER}")
                        app.push("latest")
                    }
                }
            }
        }
    }
}
