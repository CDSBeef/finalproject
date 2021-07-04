pipeline{
    environment {
        JAVA_TOOL_OPTIONS = '-Duser.home=/var/maven'
    }
    agent { 
        docker { 
            image 'maven:3.8.1-openjdk-8' 
            args '-v /tmp/maven:/var/maven/.m2 -e MAVEN_CONFIG=/var/maven/.m2'
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
    }
    post {
        always {
            cleanWs()
        }
    }
}
