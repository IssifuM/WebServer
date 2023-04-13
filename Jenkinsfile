pipeline {
    agent any

    stages {
        stage('Cloning') {
//cloning repo from github. the name of the branch on our repo is master
// make sure git and github plugin are installed
            steps {
                git url: 'https://github.com/IssifuM/WebServer.git', branch: 'master'
            }
        }
        
//calling unto the docker file in our repo and building the image
        stage('Building image') {
            steps {
                sh 'docker build -t pipelineimage .'
            }
// -t flag creates a tag name called pipelineimage
//'.' will build image using dockerfile. this is assumed we are runing cmmand from the same directory.
// if you are runnin commnad from diffrent directory then replace'.' with 'path_to_dockerfile'

        }
//build a container from the image
        stage('Building container') {
            steps {
//first remove previous container named server_web
               // sh 'docker rm server_web'
//then build the container 
                sh 'docker run --detach --publish 8081:8080 --name server_web pipelineimage'
// -d or --detach flag runs the new container in “detached” mode (in the background).
// -p or --publish flag to create a mapping between the host’s port 8081 to the container’s port 8080. 
// Without the port mapping, you wouldn’t be able to access the application.
// --name is the name you want to call the conatiner
//the last word is the name/tage_name of the image we want to run the container from.
            }
        }
    }
}

