pipeline { 
    agent any

    environment {
        DOCKER_IMAGE = "serliapril284/tubes_komputasi:${BUILD_NUMBER}"
        DISCORD_WEBHOOK = credentials("webhook-discord")
        TEAMS_WEBHOOK = "https://telkomuniversityofficial.webhook.office.com/webhookb2/0cf5bada-6740-4a51-860c-9ba5375674e7@90affe0f-c2a3-4108-bb98-6ceb4e94ef15/IncomingWebhook/7ac7928cc6b6497d9c07079a87cc2460/82aeb6a7-ff90-4632-8b22-88604033ca3d/V27eF9ZOG4qWX5MUN8XgRcJ0ho03e8S8nX0AL7Y-0rmaY1"
    }

    stages {
        stage('Clone Repository') {
            steps {
                echo "Cloning repository..."
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                echo "Building Docker image..."
                script {
                    bat "docker build -t ${DOCKER_IMAGE} ."
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                echo "Pushing Docker image to registry..."
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

        stage('Notif Discord') {
            steps {
                echo "Sending notification to Discord..."
                script {
                    def message = [
                        "content": "Pipeline berhasil",
                        "embeds": [
                            [
                                "title": "docker build dan push",
                                "description": "Image `${DOCKER_IMAGE}` berhasil di push",
                                "color": 3066993
                            ]
                        ]
                    ]
                    httpRequest(
                        httpMode: 'POST',
                        acceptType: 'APPLICATION_JSON',
                        contentType: 'APPLICATION_JSON',
                        requestBody: groovy.json.JsonOutput.toJson(message),
                        url: DISCORD_WEBHOOK
                    )
                }
            }
        }

        stage('Notif Microsoft Team') {
            steps {
                echo "Sending notification to Microsoft Teams..."
                script {
                    def curlCommand = """
                        curl -H "Content-Type: application/json" -d '{
                          "text": "Build selesai! Status: SUCCESS"
                        }' ${TEAMS_WEBHOOK}
                    """
                    bat curlCommand
                }
            }
        }
    }

    post {
        failure {
            script {
                echo "Pipeline failed. Sending failure notifications..."
                def discordMessage = [
                    "content": "Pipeline gagal",
                    "embeds": [
                        [
                            "title": "Pipeline gagal",
                            "description": "Terdapat kesalahan",
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
 
                def teamsCurlCommand = """
                    curl -H "Content-Type: application/json" -d '{
                      "text": "Pipeline gagal! Periksa log untuk detailnya."
                    }' ${TEAMS_WEBHOOK}
                """
                bat teamsCurlCommand
            }
        }
    }
}
