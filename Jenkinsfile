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
                                docker.build("imanehl13/springbootappdeploy")
                                      .push("latest")
                            }
                        }
                    }
        }
    }
}
