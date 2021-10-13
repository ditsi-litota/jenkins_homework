pipeline {
    agent any

    parameters {
        string(name: 'docker_name', defaultValue: 'image')
        string(name: 'docker_tag', defaultValue: 'latest')
        string(name: 'sleep_time', defaultValue: '5m')
        string(name: 'workdir', defaultValue: '/workdir')
    }

    stages {
        stage('build') {
            steps {
                script {
                    dockerImage = docker.build("${params.docker_name}:${params.docker_tag}", "--build-arg ARG_SLEEP_TIME=${params.sleep_time} --build-arg ARG_WORKDIR=${params.workdir} .")
                }
            }
        }
    }
}