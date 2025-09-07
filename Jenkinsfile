pipeline {
    agent any
    tools {
        maven 'Maven3'
    }
    stages {
        stage('Checkout') {
            steps {
                // Clean the workspace first
                cleanWs()
                // Checkout the code using the specific git command
                git branch: 'main', url: 'https://github.com/onkar-sopho/todo-app.git'
            }
        }
        stage('Build Java App') {
            steps {
                dir('todo-app') {
                    sh 'mvn clean package'
                }
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t whitewolf799/todo-app'
            }
        }
    }
}