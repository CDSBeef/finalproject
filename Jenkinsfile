pipeline{
    agent any
     }
    stages{
        stage("buil docker"){
            steps{
                sh 'docker pull cdsbeef/pushert:latest'
                sh 'docker build cdsbeef/pushert'
            }
        }
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
