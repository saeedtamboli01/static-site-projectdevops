pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'your-docker-username/static-site:latest'
    }

    stages {
        stage('Checkout Code') {
            steps {
                echo 'Cloning the GitHub repository...'
                checkout scm
            }
        }

        stage('Pull Docker Image') {
            steps {
                echo 'Pulling latest Docker image from Docker Hub...'
                sh 'docker pull $DOCKER_IMAGE'
            }
        }

        stage('Deploy Container') {
            steps {
                echo 'Deploying the Docker container...'
                sh '''
                    # Stop and remove old container if it exists
                    docker stop static-site || true
                    docker rm static-site || true

                    # Run the latest container
                    docker run -d \
                      --name static-site \
                      -p 8080:80 \
                      $DOCKER_IMAGE
                '''
            }
        }
    }

    post {
        success {
            echo '✅ Deployment successful! Your static site is now running on port 8080.'
        }
        failure {
            echo '❌ Deployment failed. Check logs for details.'
        }
    }
}
