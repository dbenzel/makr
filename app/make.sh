PROJECT_NAME=$1
EMAIL=$2

docker build -t=makr:mfe \
    --build-arg PROJECT_NAME=${PROJECT_NAME} \
    --build-arg EMAIL=${EMAIL} ./micro-fe && \
docker run -it --rm -v $(pwd):/build makr:mfe
# docker build -t=${PROJECT_NAME} ./${PROJECT_NAME} && \
# docker run -it --rm ${PROJECT_NAME}