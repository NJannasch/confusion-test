pipeline {
    agent {
        docker {
            image 'pytorch/pytorch:0.4-cuda9-cudnn7-devel'
            args ''
        }
    }

    environment {
    }

    stages {
        stage('Build') {
            steps {
                sh 'apt-get update'
                sh 'apt-get install libgtk2.0-dev -y'
                sh 'pip install nils-jenkinstest'
            }
        }
        stage('Run Tests') {
          parallel {
            stage('Code Linting') {
              steps {
                  sh 'flake8 --max-complexity 16 .'
              }
            }
          }
        }
    }
}
