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

# OpenTofu

# Update packages and install required tools
RUN apt-get update && \
    apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg && \
    rm -rf /var/lib/apt/lists/*

# Create directory for GPG keys
RUN install -m 0755 -d /etc/apt/keyrings

# Download and install OpenTOFU GPG key
RUN curl -fsSL https://get.opentofu.org/opentofu.gpg | tee /etc/apt/keyrings/opentofu.gpg >/dev/null && \
    chmod a+r /etc/apt/keyrings/opentofu.gpg

# Download and install OpenTOFU repository GPG key
RUN curl -fsSL https://packages.opentofu.org/opentofu/tofu/gpgkey | gpg --no-tty --batch --dearmor -o /etc/apt/keyrings/opentofu-repo.gpg >/dev/null

# Add OpenTOFU repository to apt sources list
RUN echo "deb [signed-by=/etc/apt/keyrings/opentofu.gpg,/etc/apt/keyrings/opentofu-repo.gpg] https://packages.opentofu.org/opentofu/tofu/any/ any main \
        deb-src [signed-by=/etc/apt/keyrings/opentofu.gpg,/etc/apt/keyrings/opentofu-repo.gpg] https://packages.opentofu.org/opentofu/tofu/any/ any main" | \
    tee /etc/apt/sources.list.d/opentofu.list > /dev/null

# Install tofu
RUN apt-get update && \
    apt-get install -y tofu


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