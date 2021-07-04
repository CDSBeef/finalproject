pipeline{
    environment {
        JAVA_TOOL_OPTIONS = '-Duser.home=/home/jenkins'
    }
    agent { 
        dockerfile { 
            args '-v /tmp/maven:/home/jenkins/.m2 -e MAVEN_CONFIG=/home/jenkins/.m2'
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
