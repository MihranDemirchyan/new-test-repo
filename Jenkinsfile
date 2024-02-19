pipeline {
    agent none
    stages {
        stage('Build') {
            agent any
            steps {
                script {
                    dockerImage = docker.build('python:3.10')
                }
            }
        }
    }
}
