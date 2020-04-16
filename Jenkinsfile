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
      stage( 'Coloured Outputs with git commit id' ) {
         steps {
             script{
                 logs.info "SUCCESS"
                 logs.warn "WARNING"
             }
         }
      }
  }
}
