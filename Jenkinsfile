@Library('my-shared-library') _
pipeline {

    agent any

    parameters {
        choice(name: 'action', choices: 'create\ndelete', description: 'Choice create/Destroy')
    }

    stages{
    
        stage('Git checkout'){
             when { expression { params.action == 'create'} }
            steps {
                gitCheckout(
                    branch: "main",
                    url: "https://github.com/cristianmorac/ci-cd-jenkins.git"
                )
            }
        }

        stage('Unit test maven'){
            when { expression { params.action == 'create'} }
            steps {
                script {
                    /* Instalar maven apt install maven -y */
                    mvnTest()
                }
            }
        }

        stage('Integration test maven'){
            when { expression { params.action == 'create'}}
            steps{
                script {
                    mvnIntegrationTest()
                }
            }
        }

        stage('Static code analysis: Sonarqube'){
            when { expression { params.action == 'create'} }
            steps {
                script {
                    def SonarQubecredentialsId = 'TOKEN_SONAR'
                    staticCodeAnalysis(SonarQubecredentialsId)
                }
            }
            
        }

        stage('Quality gate status check : Sonarqube'){
            when { expression { params.action == 'create'}}
            steps {
                script{
                    def SonarQubecredentialsId = 'TOKEN_SONAR'
                    QualityGateStatus(SonarQubecredentialsId)
                }
            }
        }

        stage('Maven build: maven'){
            when { expression { params.action == 'create'} }
            steps{
                script{
                    mvnBuild()
                }
            }
        }
    }
}