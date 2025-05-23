pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'bharathchandragoudme/jenkindocker'
    }

    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh "docker build -t $DOCKER_IMAGE ."
            }
        }

        stage('Login to Docker Hub') {
            steps {
                withCredentials([usernamePassword(credentialsId: '2a5a834d-51a6-41d8-b656-f94e37179af1', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                    sh 'echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin'
                }
            }
        }

        stage('Push Image') {
            steps {
                sh "docker push $DOCKER_IMAGE"
            }
        }
    }
}
