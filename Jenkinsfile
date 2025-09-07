pipeline {
    agent {
        docker {
            image 'maven:3-eclipse-temurin-17'
            args '-v /var/run/docker.sock:/var/run/docker.sock'
        }
    }
    stages {
        stage('Build and Package') {
            steps {
                sh 'mvn clean package'
                sh 'docker build -t whitewolf799/todo-app .'
            }
        }
    }
}