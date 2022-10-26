pipeline {
    agent any
    environment {
        
    }

    stages {
        stage('Cleanup') {
            steps {
                echo "Hello World"
            }
        }
        stage('Checkout') {
            steps {
               checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'Jenkins-infra-Terraform', url: 'https://github.com/Apurva14A/Terraform-Project.git']]])
            }
        }
        stage('build') {
            steps {
                echo "terraform init ${BUILD_ID}"
               
            }
        }
        stage('Testing') {
            steps {
                echo "Testing"
               
            }
        }
    }
}
