pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build & Run Docker') {
            steps {
                sh 'docker-compose down'
                sh 'docker-compose up -d'
            }
        }

        stage('Verify Table') {
            steps {
                sh '''
                sleep 10
                docker exec postgres_db psql -U admin -d testdb -c "SELECT * FROM users;"
                '''
            }
        }
    }
}