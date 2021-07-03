pipeline{
    agent any
    tools{
        maven 'my_mvn'
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
}
