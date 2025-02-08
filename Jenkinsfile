pipeline {
    
    agent any

    environment {

        myappname = "ntmsapp"
    }

    stages {

        stage('init') {
environment {
                phase = "init"
            }
            steps {

                echo "Running INIT command"

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
