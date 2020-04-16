#!groovy
library identifier: 'Jenkins2@master', retriever: modernSCM(
        [$class: 'GitSCMSource' ,
         remote: 'https://github.com/ga-sudo/Jenkins2'])
pipeline {
   agent any
    options{
       timestamps()
       ansiColor( 'xterm' )
   }
   stages {
      stage( 'List All Images' ) {
         steps {
             script{
                    sh  ''' docker image ls
                    '''
                    logs.info( "Successfully Executed" )
                    def ret = sh(script:  'D' , returnStatus: true)
                    logs.warning(ret)
             }
       }
   }
   stage( 'Git Commit Id' ) {
      steps {
           script{
                 def gitId=sh(script: 'git rev-parse HEAD' , returnStdout: true)
                 logs.gitCommitId(gitId)
            }
       }
    }
  }
}
