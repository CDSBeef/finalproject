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
    }
    post {
        always {
            cleanWs()
        }
    }
}
