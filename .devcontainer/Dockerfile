ARG TERRAFORM_VERSION=1.6.2

FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Install common dependencies
RUN apt-get update \
    && apt install -y --no-install-recommends \
        git \
        wget \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Terraform

RUN apt-get update && apt-get install -y gnupg software-properties-common 

RUN wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
tee /usr/share/keyrings/hashicorp-archive-keyring.gpg

RUN gpg --no-default-keyring \
--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
--fingerprint

RUN echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
tee /etc/apt/sources.list.d/hashicorp.list

RUN apt-get update && apt-get install terraform-${TERRAFORM_VERSION} && apt-get clean 