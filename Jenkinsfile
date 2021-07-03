pipeline{
    agent {
        docker {
          image "maven:3.8.1-jdk-8"
          label "docker"
        }
    }
    
    stages{
        stage("Checkout"){
            steps{
                git 'https://github.com/CDSBeef/finalproject.git'
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
