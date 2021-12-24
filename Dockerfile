FROM golang:1.17-alpine
RUN mkdir /build
ADD go.mod go.sum workflow.go /build/
WORKDIR /build
RUN go build
