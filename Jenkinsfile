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
        withKubeConfig([credentialsId: 'kubernetes']) {
            sh 'kubectl apply -f k8s/deployment.yml --validate=false'
        }
    }
}


    }
}
