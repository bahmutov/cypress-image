FROM node:7

# Need Xvfb and its dependencies
RUN apt-get update --yes
RUN apt-get install --yes \
  libgtk2.0-0 \
  libnotify-dev \
  libgconf-2-4 \
  libnss3 \
  libxss1
RUN apt-get install --yes xvfb

# Need Cypress itself
RUN npm set progress=false
RUN npm i -g --loglevel warn cypress-cli@0.13.1

ENV CYPRESS_VERSION 0.19.2
RUN echo Cypress version to install $CYPRESS_VERSION
RUN cypress install
RUN cypress verify

# Verify that Cypress has all system dependencies
RUN /root/.cypress/Cypress/Cypress
