pipeline{
    agent any
     }
    stages{
        stage("Build"){
            steps{
                sh 'mvn build'
            }
        }
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
