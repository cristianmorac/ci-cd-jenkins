@Library('my-shared-library') _
pipeline {

    agent any

    /* parameters {
        choice(name: 'action', choices: 'create\ndelete', description: 'Choice create/Destroy')
    } */

    tools {
    maven 'Maven3' // el nombre debe coincidir con tools maven
    }

    stages{
        /* when { expressions { param.action == 'create'}} */
        stage('Git checkout'){
            steps {
                gitCheckout(
                    branch: "main",
                    url: "https://github.com/cristianmorac/ci-cd-jenkins.git"
                )
            }
        }

        stage('Unit test maven'){
            /* when { expressions { param.action == 'create'}} */
            steps {
                script {
                    /* Instalar maven apt install maven -y */
                    mvnTest()
                }
            }
        }
    }
}