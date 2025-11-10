pipeline {
  agent {
    docker {
      image 'docker:24.0.7-dind'
      args '-v /var/run/docker.sock:/var/run/docker.sock'
    }
  }
  stages {
    stage('Build and Push') {
      steps {
        sh 'docker version'
        sh 'docker build -t your-docker-username/static-site:latest .'
        sh 'docker push your-docker-username/static-site:latest'
      }
    }
  }
}
