//docker-compose up --build
//docker-compose exec app php artisan migrate
//docker-compose down
//docker run -d --name nama-container image-name
pipeline { 
    agent any

    environment {
        DOCKER_IMAGE = "serliapril284/tubes_komputasi:${BUILD_NUMBER}"
        DISCORD_WEBHOOK = credentials("webhook-discord")
        TEAMS_WEBHOOK = "https://telkomuniversityofficial.webhook.office.com/webhookb2/0cf5bada-6740-4a51-860c-9ba5375674e7@90affe0f-c2a3-4108-bb98-6ceb4e94ef15/IncomingWebhook/7ac7928cc6b6497d9c07079a87cc2460/82aeb6a7-ff90-4632-8b22-88604033ca3d/V27eF9ZOG4qWX5MUN8XgRcJ0ho03e8S8nX0AL7Y-0rmaY1"
    }

    stages {
        stage('1. Planning') {
            steps {
                echo "Planning the pipeline and defining objectives..."
            }
        }

        stage('2. Analysis') {
            steps {
                echo "Analyzing requirements and preparing resources..."
                echo "Fetching repository and credentials for pipeline."
            }
        }

        stage('3. Design') {
            steps {
                echo "Designing the Docker architecture and CI/CD stages..."
            }
        }

        stage('4. Implementation') {
            steps {
                echo "Implementing the solution..."
                echo "Cloning repository..."
                checkout scm
            }
        }

        stage('5. Testing') {
            steps {
                echo "Testing the application..."
                echo "Building Docker image..."
                script {
                    bat "docker build -t ${DOCKER_IMAGE} ."
                }
            }
        }

        stage('6. Deployment') {
            steps {
                echo "Deploying Docker image to registry..."
                withCredentials([usernamePassword(credentialsId: 'docker-tubes', 
                 usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                    bat """
                    echo %DOCKER_PASSWORD% > docker-password.txt
                    docker login -u %DOCKER_USERNAME% --password-stdin < docker-password.txt
                    docker push ${DOCKER_IMAGE}
                    del docker-password.txt
                    """
                }
            }
        }

        stage('7. Maintenance') {
            steps {
                echo "Sending notifications to Discord and Microsoft Teams for maintenance and updates..."
                script {
                    // Discord notification
                    def discordMessage = [
                        "content": "Pipeline berhasil",
                        "embeds": [
                            [
                                "title": "Pipeline Execution",
                                "description": "Image `${DOCKER_IMAGE}` successfully pushed.",
                                "color": 3066993
                            ]
                        ]
                    ]
                    httpRequest(
                        httpMode: 'POST',
                        acceptType: 'APPLICATION_JSON',
                        contentType: 'APPLICATION_JSON',
                        requestBody: groovy.json.JsonOutput.toJson(discordMessage),
                        url: DISCORD_WEBHOOK
                    )

                    // Microsoft Teams notification
                    bat """
                        curl -H "Content-Type: application/json" -X POST -d "{\\"text\\": \\"Pipeline executed successfully!\\"}" ${TEAMS_WEBHOOK}
                    """
                }
            }
        }
    }

    post {
        failure {
            steps {
                echo "Pipeline failed. Sending failure notifications..."
                script {
                    def discordMessage = [
                        "content": "Pipeline failed",
                        "embeds": [
                            [
                                "title": "Pipeline Execution Failed",
                                "description": "An error occurred during the pipeline execution.",
                                "color": 15158332
                            ]
                        ]
                    ]
                    httpRequest(
                        httpMode: 'POST',
                        acceptType: 'APPLICATION_JSON',
                        contentType: 'APPLICATION_JSON',
                        requestBody: groovy.json.JsonOutput.toJson(discordMessage),
                        url: DISCORD_WEBHOOK
                    )

                    bat """
                        curl -H "Content-Type: application/json" -d '{
                          "text": "Pipeline failed! Check logs for details."
                        }' ${TEAMS_WEBHOOK}
                    """
                }
            }
        }
    }
}
