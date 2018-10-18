############################################################
# Dockerfile
############################################################

# Set the base image
FROM node:10-alpine

############################################################
# Configuration
############################################################
ENV VERSION "1.7.1"

############################################################
# Installation
############################################################

RUN apk --no-cache add bash &&\
    npm install -g @angular/cli@${VERSION}

############################################################
# Execution
############################################################
CMD [ "ng", "--help"]
