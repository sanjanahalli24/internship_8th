FROM jenkins/jenkins:lts

USER root

# Install Docker inside Jenkins container
RUN apt-get update && apt-get install -y \
    docker.io \
    && apt-get clean

USER jenkins
