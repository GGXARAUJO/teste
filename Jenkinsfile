pipeline {
  agent any

  stages {
    stage('Build Docker Image') {
      steps {
        script {
          dockerImage = docker.build('my-node-app:latest', '-f Dockerfile .')
        }
      }
    }
    stage('Run Docker Container') {
      steps {
        script {
          dockerImage.run('--rm -p 8080:8080')
        }
      }
    }
  }
}
