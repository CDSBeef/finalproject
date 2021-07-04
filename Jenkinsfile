pipeline{
    agent any
	environment {
        USER_N = credentials('usersn')
        USER_P = credentials('userp')
    }
    stages{
        stage("Checkout"){
            steps{
                git 'https://github.com/CDSBeef/finalproject.git'
            }
        }
        stage("build docker"){
            steps{
                sh 'docker pull cdsbeef/pushert:latest'
                sh 'docker run -p 8081:8080 -d cdsbeef/pushert'
            }
        }
        stage("push docker"){
            steps{
				sh 'docker login -u $USER_N -p $USER_P'
                sh 'docker push cdsbeef/pushert'
                sh 'docker stop $(docker ps -q)'
            }
        }		
    }
    post {
        always {
            cleanWs()
        }
    }
}
