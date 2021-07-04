pipeline{
    agent any
     }
    stages{
        stage(""){
            steps{
                sh 'mvn build'
            }
        }
        
        stage("Build Docker Image"){
            steps{
                script{
                    app = docker.build("cdsbeef/pushert")
                }
            }
        } 
    }
    post {
        always {
            cleanWs()
        }
    }
}
