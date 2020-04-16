#!groovy
pipeline {
   library('my-shared-library')
   node('jenkins') {
   timestamps {
       ansiColor('xterm'){
      logs.info "SUCCESS"
      logs.warn "WARNING"
      }
    }
  }
}
