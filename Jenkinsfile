pipeline {
    agent {
        dockerNode { image 'ubuntu:latest' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'lsb_release -a'
            }
        }
    }
}
