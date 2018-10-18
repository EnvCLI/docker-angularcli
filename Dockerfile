############################################################
# Dockerfile
############################################################

# Set the base image
FROM node:10-alpine

############################################################
# Configuration
############################################################
ENV VERSION "6.2.5"

############################################################
# Installation
############################################################

RUN apk --no-cache add bash &&\
    npm install -g @angular/cli@${VERSION}

############################################################
# Execution
############################################################
CMD [ "ng", "--help"]
