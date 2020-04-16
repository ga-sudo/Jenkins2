pipeline {
    agent any 
    stages {
        stage('Docker Build') {
            steps {
               sh 'docker build -t 044650439222.dkr.ecr.us-east-1.amazonaws.com/garima:$(git rev-parse HEAD) .'
            }
        }
        stage('pushing image to ECR') {
            steps {
                sh 'docker push 044650439222.dkr.ecr.us-east-1.amazonaws.com/garima:$(git rev-parse HEAD)'
            }
        }
        stage('Deploying on eks') {
            steps {
                	sh 'kubectl apply -f deployment.yml'
			sh 'sleep 10'
			sh 'kubectl get pods'
			sh 'kubectl get svc'
			sh 'kubectl describe pods'
            }
        }
    }
	post {
        success {
            emailext body: 'Success', recipientProviders: [[$class: 'DevelopersRecipientProvider'], [$class: 'RequesterRecipientProvider']], subject: 'success build'
        }
        failure {
            emailext body: 'failed', recipientProviders: [[$class: 'DevelopersRecipientProvider'], [$class: 'RequesterRecipientProvider']], subject: 'failed build'
        }
    }
    
}
