@library('my-shared-library')
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
    }
}