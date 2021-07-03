pipeline{
    agent {
        docker {
          image "maven:3.6.0-jdk-13"
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
