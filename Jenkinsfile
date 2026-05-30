pipeline {
    agent any
  
    environment {
        CREDENTIAL = "docker-hub"
        DOCKER_HUB = credentials("$CREDENTIAL")
        REGISTRY_USER = "${DOCKER_HUB_USR}"
        REGISTRY_PASSWORD = "${DOCKER_HUB_PSW}"      
        REGISTRY = 'docker.io'
        REGISTRY_SERVER = "https://index.docker.io/v1/"
        REPOSITORY = "${DOCKER_HUB_USR}/${JOB_BASE_NAME}"
        BRANCH_NAME = "${GIT_BRANCH.split("/")[1]}"
        TAG = "build-${BUILD_NUMBER}"
        IMAGE = "${REGISTRY}/${REPOSITORY}:${TAG}"
    } // end environment
 
 
    stages {       

        // ------------------------------------------------------------------ //
        //  Original – BUILD                                                    //
        // ------------------------------------------------------------------ //
        stage('Build') {
            steps {
                // Log in to registry (not needed to just check docker functionality)
                //sh '''
                //    echo "${REGISTRY_PASSWORD}" | docker login ${REGISTRY} -u "${REGISTRY_USER}" --password-stdin
                //'''
                // set up buildx
                sh '''
                    docker buildx inspect --bootstrap
                '''
                // Build the image (add --push if you want to test that)
                sh '''
                    docker buildx build --tag ${IMAGE} .
                    docker image ls
                '''
            } //end steps
        } // end stage
        
    } // end stages
 
} //end pipeline
