pipeline {
    agent any

    stage("build") {
        when {
            expresion {
                BRANCH_NAME == 'master' && CODE_CHANGES == true
            }
        }
        steps {
            
            echo 'build application...'
        }
    }

    stage("test") {
        when {
            expression {
                BRANCH_NAME == 'master'
            }
        }
        steps {
            echo "testing the application"
        }
    }

    stage("deploy") {
        steps {
            echo "deploying the application"
        }
    }
}
