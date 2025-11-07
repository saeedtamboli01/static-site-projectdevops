pipeline {
    agent any
    stages {
        stage('Deploy Website') {
            steps {
                echo 'Pulling latest static site image...'
                sh 'docker pull your-docker-username/static-site:latest'

                echo 'Stopping and removing old container...'
                sh 'docker stop static-site || true && docker rm static-site || true'

                echo 'Running new container...'
                sh 'docker run -d -p 80:80 --name static-site your-docker-username/static-site:latest'
            }
        }
    }
}
