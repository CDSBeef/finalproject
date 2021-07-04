pipeline{
    agent { docker { image 'maven:3.3.3' } }
    stages{
        stage("Checkout"){
            steps{
                git credentialsId: 'github_login', url: 'https://github.com/CDSBeef/finalproject.git'
            }
        }
        stage("Build"){
            steps{
                sh "mvn compile"
            }
        }
        stage("Test"){
            steps{
                sh "mvn test"
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}
