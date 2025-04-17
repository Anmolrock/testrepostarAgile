pipeline {
    agent any

    environment {
        IMAGE_NAME = "testrepostaragile"
        IMAGE_TAG = "latest"
    }

    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/Anmolrock/testrepostarAgile.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }
    }
}

