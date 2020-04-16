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
                 log.info “SUCCESS”
                 log.warn “WARNING”
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
