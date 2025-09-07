pipeline {
    agent any

    tools {
        maven 'Maven3'
    }

    stages {
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