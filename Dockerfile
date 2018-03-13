FROM golang:alpine
WORKDIR /go/src/stripe/smokescreen
COPY . /go/src/stripe/smokescreen
RUN cd /go/src/stripe/smokescreen
RUN apk add --no-cache git build-base
RUN GOPATH=/go go get -a
RUN GOPATH=/go go build

