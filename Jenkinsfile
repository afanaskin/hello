pipeline {
  agent any
  tools {
    maven 'Maven'
  }

  stages {
    stage ('Initialize') {
      steps {
        sh '''
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
            ''' 
      }
    }

    stage ('Build') {
      steps {
      sh 'mvn clean package'
       }
    }

    stage ('Deploy-To-Tomcat') {
     steps {
      sshagent(['JenkinsKey']) {
        sh 'scp -o StrictHostKeyChecking=no target/*.war ubuntu@13.235.134.93:/opt/tomcat/webapps/webapp.war'
        }      
      }       
    }
  }
}
