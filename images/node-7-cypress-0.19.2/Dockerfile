FROM bahmutov/cypress-image:node-7-cypress-deps

# Need Cypress itself
RUN npm set progress=false
RUN npm i -g --loglevel warn cypress-cli@0.13.1

ENV CYPRESS_VERSION 0.19.2
RUN echo Cypress version to install $CYPRESS_VERSION
RUN cypress install
RUN cypress verify

# Verify that Cypress has all system dependencies
RUN cypress --version
