set e+x

# build image with everything needed to run Cypress
VERSION=0.16.4
LOCAL_NAME=front-end/cypress-ci
docker build --build-arg CYPRESS_VERSION=${VERSION} -t $LOCAL_NAME .
