set e+x

# build image with Cypress dependencies
LOCAL_NAME=bahmutov/cypress-image:node-6-xvfb-chrome

echo "Building $LOCAL_NAME"
docker build -t $LOCAL_NAME .
