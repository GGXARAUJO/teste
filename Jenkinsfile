pipeline {
agent {
    docker { image 'my-node-app' }
  }
stage('Build Docker Image') {
  steps {
    sh 'docker build -t my-node-app .'
  }
}
 
  stages {
    stage('Test') {
      steps {
        sh 'node --version'
      }
    }
  }
}
