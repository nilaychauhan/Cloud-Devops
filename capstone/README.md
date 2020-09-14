### Project: Capstone (Udacity Cloud DevOps Nanodegree)

### Project overview

- Working in AWS
- Using Jenkins to implement Continuous Integration and Continuous Deployment
- Building pipelines
- Working with CloudFormation to deploy clusters
- Building Kubernetes clusters
- Building Docker containers in pipelines


### File Structure 
- run_docker.sh : to build the docker image
- upload_docker.sh : to upload docker image to the docker hub
- Jenkinsfile : to define and work with pipelines
- Makefile: to install hadolint and lint dockerfile
- clusers/: 
     1. config.yaml : creation of a cluster file
     2. deploy.yaml : deployment file
- app.py: a project that will render html file on the default home route
- Dockerfile : dockerfile that consists step of installing dependencies, commands to run an app
- templates : html file that will be rendered
- screenshots: that consistes series of progress of this project 
