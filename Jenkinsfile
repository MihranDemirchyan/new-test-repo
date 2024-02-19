pipeline {
    agent none
    stages {
        stage('Back-end') {
            agent any
            steps {
                script {
                    dockerImage = docker.build('python:3.10')
                }
            }
        }
    }
}
