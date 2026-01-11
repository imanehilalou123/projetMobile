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
       script{ kubernetesDeploy(configs: "k8s/deployement.yml",kubeconfigId: "kubernetes") }
    }
}


    }
}
