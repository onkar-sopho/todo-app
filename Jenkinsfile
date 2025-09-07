pipeline {
    agent any
    tools {
        maven 'Maven3'
    }
    stages {
        stage('Checkout') {
            steps {
                cleanWs()
                git branch: 'main', url: 'https://github.com/onkar-sopho/todo-app.git'
            }
        }
        stage('Build and Package') {
            steps {
                sh 'mvn clean package'
                sh 'docker build -t whitewolf799/todo-app .'
            }
        }
    }
}