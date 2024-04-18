pipeline { 
    agent any 
    
    stages {
        stage('Build') { 
            steps { 
                sh 'docker build -t ops:latest .' 
            }
        }
        stage('push'){
            steps {
                script { 
                    def dockerCredentialsId ="Dockerhub"  
                    docker.withRegistry('', dockerCredentialsId) { 
                sh 'docker tag ops mpmanthan/ops:latest'
                sh 'docker image push mpmanthan/ops:latest'

                    }
                 
            }
        }
        }
        stage('Deploy') {
            steps {
                sh 'docker run -d -p 80:85 --name test ops:latest' 
            }
        }
    
}
}
