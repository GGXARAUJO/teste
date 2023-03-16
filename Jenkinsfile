pipeline {
  agent any

parameters {
        string(name: 'TRANSFORMATION_FILE', defaultValue: '/data/helloworld.ktr', description: 'Caminho para o arquivo .ktr')
        string(name: 'CONFIG_FILE', defaultValue: '/root/.kettle', description: 'Caminho para o arquivo de configuração .kettle')
    }

  stages {
    stage('Build Docker Image') {
      steps {
        script {
          dockerImage = docker.build('PentahoDI:latest', '-f Dockerfile .')
        
      }
    }
    
      }
    }
  }


    
                   
