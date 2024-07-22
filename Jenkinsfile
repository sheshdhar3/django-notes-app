pipeline {
    agent any 
    
    stages{
        stage("Clone Code"){
            steps {
                echo "Cloning the code on EC2 server"
                git url:"https://github.com/LondheShubham153/django-notes-app.git", branch: "main"
            }
        }
        stage("Build"){
            steps {
                echo "Building the image for EC2 server Sheshd"
                sh "docker build -t my-note-app ."
            }
        }

        
        stage("Deploy"){
            steps {
                echo "Deploying the container on EC2 serverSD"
                sh "docker compose down && docker compose up -d"
                
            }
        }
    }
}
