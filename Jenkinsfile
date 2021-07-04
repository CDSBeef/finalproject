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
    }
    post {
        always {
            cleanWs()
        }
    }
}
