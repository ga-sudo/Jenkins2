#!groovy
library identifier : 'Jenkins2@master', retriever: modernSCM(
[$class :  'GitSCMSource' ,
remote:
'https://github.com/ga-sudo/Jenkins2'])
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
log.info( "Successfully Executed" )
def ret = sh(script:  'D' , returnStatus:
true)
log.warning(ret)
}
}
}
stage( 'Delete reduntant Images') {
steps {script{
sh  ''' docker image prune -af
'''
log.info( "Successfully Deleted" )
}
}
}
stage( 'Git Commit Id' ) {
steps {
script{
def gitId=sh(script: 'git rev-parse HEAD' ,
returnStdout: true)
log.gitCommitId(gitId)
}
}
}
}
}
