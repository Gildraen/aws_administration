ARG ALPINE_VERSION=3.18.2

FROM alpine:${ALPINE_VERSION}

ARG TERRAFORM_VERSION=1.5.3

ARG USER=terraform
ARG UID=1000
ARG GID=1000

RUN addgroup -g ${GID} ${USER} \
    && adduser -D -u ${UID} -G ${USER} ${USER}

RUN apk update
RUN apk add --update --no-cache \
    curl \
    unzip \
    aws-cli \
    git \
    make

RUN curl "https://releases.hashicorp.com/terraform/$TERRAFORM_VERSION/terraform_${TERRAFORM_VERSION}_linux_amd64.zip" -o terraform.zip \
    && unzip terraform.zip \
    && mv terraform /usr/local/bin/ \
    && rm terraform.zip

USER ${USER}