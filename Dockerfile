FROM golang:1.12.1-alpine3.9
MAINTAINER silverbirder <silverbirder@gmail.com>

WORKDIR /go/src/github.com/Silver-birder/vugusample/
COPY . .
ENV GO111MODULE=on

RUN apk add --no-cache \
        git

EXPOSE 8080
CMD ["go", "run", "devserver.go"]