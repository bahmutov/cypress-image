set e+x

# build image with everything needed to run Cypress
VERSION=0.19.2
LOCAL_NAME=bahmutov/cypress-image

echo "Building $LOCAL_NAME with Cypress $VERSION"
docker build --build-arg CYPRESS_VERSION=${VERSION} -t $LOCAL_NAME .
