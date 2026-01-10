pipeline {
    agent any

    stages {

        stage('Clone') {
                    steps {
                        git 'https://github.com/imanehilalou123/projetMobile.git'
                    }
                }

       stage('Test Git') {
                    steps {
                        echo "Jenkins lit bien le Jenkinsfile !"
                    }
                }
    }
}
