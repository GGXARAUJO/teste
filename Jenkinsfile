pipeline {

stage('Build Docker Image') {
  steps {
    sh 'docker build -t my-node-app .'
  }
}
  agent {
    docker { image 'my-node-app' }
  }
  stages {
    stage('Test') {
      steps {
        sh 'node --version'
      }
    }
  }
}
