pipeline {
    agent any
    stages {
        
        stage('Build Started'){
            steps{
                sh "echo Building ${env.JOB_NAME} ${env.BUILD_NUMBER}"
            }
        }
        
        stage('Checking and Installing Hadolint'){
            steps{
                sh '''
                    if ! [ -x "$(command -v hadolint)" ]; then
                        echo 'Installing hadolint' >&2
                        make install
                    fi
                '''
            }
        }
        
        stage('Linting Docker File'){
            steps{
                sh 'make lint'
            }
        }
        
        stage('Building Docker Image ') {
            steps {
                sh 'sudo bash run_docker.sh'
            }
        }
        
        stage('Pushing Docker Image') {
            steps {
                withDockerRegistry([url: "", credentialsId: "docker-id"]) {
                    sh 'bash upload_docker.sh'
                }
            }
        }
  
         stage('Deploying') {
              steps{
                  echo 'Deploying to AWS EKS ....'
                  withAWS(credentials: 'aws-id', region: 'ap-south-1') {
                      sh "aws eks --region ap-south-1 update-kubeconfig --name capstone"
                      sh "kubectl config use-context arn:aws:eks:ap-south-1:936344068960:cluster/capstone"
                      sh "kubectl apply -f ./clusters/deploy.yaml"
                      
                }
            }
        }
    }
}
