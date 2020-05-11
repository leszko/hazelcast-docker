pipeline {
    agent {
        node {
            label 'multi-arch-docker-release'
            customWorkspace "${JOB_NAME}/${BUILD_NUMBER}"
        }
    }
    triggers {
        pollSCM('* * * * *')
    }

    stages {
        stage('Log into Docker Hub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'devopshazelcast-dockerhub', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                    sh "docker login --username ${USERNAME} --password ${PASSWORD}"
                }
            }
        }
        stage('Build and push "hazelcast/hazelcast" image') {
            steps {
                dir("./hazelcast-oss") {
                    script {
                        // sh "docker buildx build -t hazelcast/hazelcast:${HAZELCAST_DOCKER_TAG} --platform=linux/arm64,linux/amd64,linux/ppc64le,linux/s390x . --push"
                        sh "Hello"
                    }

                }
            }
        }
        stage('Build and push "hazelcast/hazelcast-enterprise"') {
            steps {
                dir("./hazelcast-enterprise") {
                    script {
                        // sh "docker buildx build -t hazelcast/hazelcast-enterprise:${HAZELCAST_DOCKER_TAG} --platform=linux/arm64,linux/amd64,linux/ppc64le,linux/s390x . --push"
                        sh "Hello"
                    }

                }
            }
        }
    }
}
