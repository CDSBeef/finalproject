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
        stage("docker push"){
            steps{
                script{
                    app = docker.build("cdsbeef/pushert")
                    app.inside {
                        sh 'echo hello'
                    }
                }
            }
        }
        stage("push docker"){
            steps{
                script{
                    docker.withRegistry('https://registry.hub.docker.com', 'docker_hub_login'){
                        app.push("${env.BUILD_NUMBER}")
                        app.push("latest")
                    }
                }
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}
