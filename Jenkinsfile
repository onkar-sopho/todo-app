pipeline {
    agent any

    stages {
        stage('Build Java App') {
            steps {
                sh 'mvnw clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t whitewolf799/todo-app'
            }
        }
    }
}