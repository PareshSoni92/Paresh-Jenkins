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
             catchError(message: 'Checking Terraform Fmt') {
    
                echo "perform fmt"
                bat 'terraform fmt -check'
                echo "${currentBuild.currentResult}"
}
               
            }
            
        }

        stage("Validate") {

            when {
                 ${currentBuild.currentResult} 'Success'
            }

            environment {
                phase = "Validate"
            }

            steps {

                echo "Validating the config"
                
                 bat 'terraform validate'
                 echo "${currentBuild.currentResult}"
            
            }
        }
        stage("Plan") {
            environment {
                phase = "Plan"
            }

            steps {

                echo "plan the config"
                 bat 'terraform plan'
            }
        }
stage("Apply") {
            environment {
                phase = "Apply"
            }

            steps {

                echo "Apply the config"
                 bat 'terraform apply --auto-approve'
            }
        }
    }


}
