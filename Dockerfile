############################################################
# Dockerfile
############################################################

# Set the base image
FROM node:10-alpine

############################################################
# Configuration
############################################################
ENV VERSION "6.0.0"

############################################################
# Installation
############################################################

RUN apk --no-cache add bash &&\
    npm install -g @angular/cli@${VERSION}

############################################################
# Execution
############################################################
CMD [ "ng", "--help"]
