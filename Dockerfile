FROM golang:1.12.1-alpine3.9
MAINTAINER silverbirder <silverbirder@gmail.com>

WORKDIR /go/src/app

ENV GO111MODULE=on

RUN apk add --no-cache \
        alpine-sdk \
        git \
    && go get github.com/Silver-birder/sample-vugu

EXPOSE 8080
CMD ["sample-vugu"]