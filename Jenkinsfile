pipeline{
    agent any
     }
    stages{
        stage("docker push"){
            steps{
                script{
                    app = docker.build("cdsbeef/pushert")
                    app.inside {
                        sh 'echo hello'
                    }
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
