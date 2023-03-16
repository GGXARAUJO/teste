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
          dockerImage = docker.build('pentahodi:latest', '-f Dockerfile .')
        
      }
    }
    
      }
    stage('Run Docker Container') {
      steps {
        def file = sh(script: "basename ${params.TRANSFORMATION_FILE}", returnStdout: true).trim()
        script {
          dockerImage.run('--rm -p 8080:8080 -v $TRANSFORMATION_FILE:/data/$file -v $CONFIG_FILE:/root/.kettle PentahoDI:latest /bin/bash -c './pan.sh /file:/data/$file')
        }
    }
                          }
                          }
  }


    
                   
