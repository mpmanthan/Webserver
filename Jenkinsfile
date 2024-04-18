pipeline { 
    agent any 
    
    stages {
        stage('Build') { 
            steps { 
                sh 'docker build -t mpmanthan/dev:latest .' 
            }
        }
        stage('push'){
            steps {
                script { 
                    def dockerCredentialsId ="Dockerhub"  
                    docker.withRegistry('', dockerCredentialsId) { 
                sh 'docker tag dev mpmanthan/dev:latest'
                sh 'docker image push mpmanthan/dev:latest'

                    }
                 
            }
        }
        }
        stage('Deploy') {
            steps {
                sh 'docker run -d -p 85:85 --name devops dev:latest' 
            }
        }
    
}
}
