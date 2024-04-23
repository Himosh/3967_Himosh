#!groovy
pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                // Checkout your source code from version control system
                script {
                    git branch: 'master', url: 'https://github.com/Himosh/3967_Himosh.git'
                }
                
                // Build the Docker image
                script {
                    docker.build('my-spring-app', '-f ./Dockerfile .')
                }
            }
        }
        
        stage('Run') {
            steps {
                // Run the Docker container
                script {
                    docker.image('my-spring-app').run('-p 8081:8081')
                }
            }
        }
    }
}