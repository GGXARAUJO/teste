pipeline {
  agent any

parameters {
        string(name: 'TRANSFORMATION_FILE', defaultValue: '/data/oi.kjb/oi.kjb', description: 'Caminho para o arquivo .ktr')
        string(name: 'CONFIG_FILE', defaultValue: '/root/.kettle', description: 'Caminho para o arquivo de configuração .kettle')
    }

  stages {
    stage('Build Docker Image') {
      steps {
        script {
          dockerImage = docker.build('pentahodi:latest', '-f Dockerfile .')
        
      }
    }
    
      }
    stage('Start Container') {
            steps {
                
                    sh "docker run --rm -v $TRANSFORMATION_FILE:/data/oi.kjb -v $CONFIG_FILE:/root/.kettle pentahodi:latest /bin/bash -c './data-integration/pan.sh /file:/data/oi.kjb'"
            }
        }
                          
  }
}


    
                   
