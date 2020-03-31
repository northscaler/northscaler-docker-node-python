FROM node:10-alpine

MAINTAINER docker@northscaler.com

RUN apk add --no-cache make gcc g++ python && \
  npm install --production --silent && \
  apk del make gcc g++ python

LABEL version=0.1.0-pre.0