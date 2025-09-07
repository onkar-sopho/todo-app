pipeline {
    agent any
    tools {
        maven 'Maven3'
    }
    stages {
        stage('Checkout') {
            steps {
                // First, wipe the workspace clean
                cleanWs()
                // Then, check out the code from the Git repo configured in the job
                checkout scm
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