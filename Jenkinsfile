@Library('my-shared-library') _
pipeline {

    agent any

    parameters {
        choice(name: 'action', choices: 'create\ndelete', description: 'Choice create/Destroy')
    }

    stages{
    
        stage('Git checkout'){
             when { expressions { param.action == 'create'}}
            steps {
                gitCheckout(
                    branch: "main",
                    url: "https://github.com/cristianmorac/ci-cd-jenkins.git"
                )
            }
        }

        stage('Unit test maven'){
            when { expressions { param.action == 'create'}}
            steps {
                script {
                    /* Instalar maven apt install maven -y */
                    mvnTest()
                }
            }
        }

        stage('Integration test maven'){
            when { expressions { param.action == 'create'}}
            steps{
                script {
                    mvnIntegrationTest()
                }
            }
        }

        stage('Static code analysis: Sonarqube'){
            when { expressions { param.action == 'create'}}
            steps {
                script {
                    staticCodeAnalysis()
                }
            }
            
        }
    }
}