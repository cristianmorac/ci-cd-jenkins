@Library('my-shared-library') _
pipeline {
    agent any
    stages{
        stage('Git checkout'){
            steps {
                gitCheckout(
                    branch: "main",
                    url: "https://github.com/cristianmorac/ci-cd-jenkins.git"
                )
            }
        }

        stage('Unit test maven'){
            steps {
                script {
                    /* Instalar maven apt install maven -y */
                    mvnTest()
                }
            }
        }

        stage('Integration test maven'){
            steps{
                script {
                    mvnIntegrationTest()
                }
            }
        }
    }
}