pipeline {
    agent any
    stages {
        stage('Build') {
            agent {
                docker {
                    image 'node:20.11.1-alpine3.19'
                }
            }
            steps {
                sh 'node --version'
            }
        }
    }
}
