pipeline{
    agent { 
        dockerfile { 
            args '-u root'
        } 
     }
    tools {
        maven "my_mvn"
    }
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
        stage("pack"){
            steps{
                sh "mvn package"
            }
        }
        stage("Deploy"){
            steps{
                input 'Is the ready for Production?'
                milestone(1)
                sh "mvn spring-boot:run"
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}
