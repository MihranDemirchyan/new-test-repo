pipeline {
    agent none
    stages {
        stage("Build Docker Image") {
            agent {
                docker { image 'docker:24.0.5' }
            }
            steps {
                script {
                    dockerImage = docker.build("python:3.10")
                }
            }
        }
    }
}

