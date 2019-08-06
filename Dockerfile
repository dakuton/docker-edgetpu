FROM ubuntu:18.04

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
                      curl \
                      python2.7 \
                      wget \
                      gnupg \
                      ca-certificates \
  && rm -rf /var/lib/apt/lists/*

RUN echo "deb https://packages.cloud.google.com/apt coral-edgetpu-stable main" > /etc/apt/sources.list.d/google-cloud-sdk.list \
  && curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - \
  && apt-get update \
  && apt-get install -y --no-install-recommends \
                     edgetpu \
  && rm -rf /var/lib/apt/lists/*
