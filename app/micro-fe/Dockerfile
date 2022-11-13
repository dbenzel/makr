FROM python:3.10-slim-bullseye

ARG PROJECT_NAME='foobar-and-grille'
ARG EMAIL='eng@foobar-and-grill.com'

RUN apt update && \
    apt install -y git curl nodejs npm

WORKDIR /app/
COPY build.sh ./
WORKDIR /build/${PROJECT_NAME}
COPY ./template/* ./
ENTRYPOINT ["/bin/bash", "/app/build.sh", "$PROJECT_NAME", "$EMAIL" ]