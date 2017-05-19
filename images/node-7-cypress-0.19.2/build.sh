set e+x

# build image with everything needed to run Cypress
LOCAL_NAME=bahmutov/cypress-image:node-7-cypress-0.19.2

echo "Building $LOCAL_NAME"
docker build -t $LOCAL_NAME .
