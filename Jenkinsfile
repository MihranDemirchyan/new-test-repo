pipeline {
    agent any
    environment {
        DOCKER_IMAGE_NAME = "mihran03/testing-docker"
    }
    stages {
        stage('Build') {
            steps {
                echo 'Running build automation'
                sh './gradlew build --no-daemon'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    app = docker.build(DOCKER_IMAGE_NAME)
                    app.inside {
                        sh 'Hello World'
                    }
                }
            }
        }
        stage('Push Docker Image') {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com','dockerhub-login') {
                        app.push ("${env.BUILD_NUMBER}")
                        app.push ("latest")
                    }
                }
            }
        }
    }
}
