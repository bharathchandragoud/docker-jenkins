pipeline {
    agent any

    environment {
        IMAGE_NAME = "bharathchandragoudme/jenkindocker"
    }

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/bharathchandragoud/docker-jenkins.git'
            }
        }

        stage('Build JAR') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("${IMAGE_NAME}")
                }
            }
        }

        stage('Push to Docker Hub') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', 'docker-hub-credentials') {
                        dockerImage.push('latest')
                    }
                }
            }
        }
    }
}
