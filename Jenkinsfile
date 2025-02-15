pipeline {
    
    agent any

    environment {

        myappname = "Random-Password"
    }

    stages {

        stage('init') {
environment {
                phase = "init"
            }
            steps {

                echo "Running INIT command"
                bat 'terraform init'
            }

        }
        stage("fmt") {
            environment {
                phase = "fmt"
            }

            steps {

                echo "perform fmt"

            }
            
        }

        stage("Validate") {
            environment {
                phase = "Validate"
            }

            steps {

                echo "Validating the config"

            }
            
        }

    }



}
