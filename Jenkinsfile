pipeline {
    agent any

    environment {
        // DB temporaire dans le workspace
        SQLITE_DB_LOCATION = "${WORKSPACE}\\tmp\\todo-${BUILD_NUMBER}.db"
    }

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

        stage('Prepare tmp folder') {
            steps {
                // Créer le dossier tmp si inexistant
                bat 'if not exist "%WORKSPACE%\\tmp" mkdir "%WORKSPACE%\\tmp"'
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
