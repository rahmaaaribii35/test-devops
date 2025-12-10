pipeline {
    agent any

    

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/rahmaaaribii35/www.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                bat 'npm install'
            }
        }

       
        stage('Test') {
            steps {
                bat 'npm test'
            }
        }



        stage('Build Docker Image') {
            steps {
                bat 'docker build -t todo-app .'
            }
        }
    }

    post {
        always {
            echo 'Pipeline terminé'
        }
    }
}
