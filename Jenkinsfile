pipeline {
    agent none
    stages {
        stage('Back-end') {
            agent {
                docker { image 'python:3.10' }
            }
            steps {
                sh 'python --version'
            }
        }
    }
}
