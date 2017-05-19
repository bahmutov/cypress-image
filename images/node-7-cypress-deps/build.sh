set e+x

# build image with Cypress dependencies
LOCAL_NAME=bahmutov/cypress-image:node-7-cypress-deps

echo "Building $LOCAL_NAME"
docker build -t $LOCAL_NAME .
