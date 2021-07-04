pipeline{
    agent any
     }
    tools {
        maven "my_mvn"
    }
    stages{
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
