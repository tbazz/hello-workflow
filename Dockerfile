FROM golang:1.8-alpine
ADD . /go/src/helloworkflow
RUN go install helloworkflow

FROM alpine:latest
COPY --from=0 /go/bin/helloworkflow .
ENV PORT 8080
CMD ["./helloworkflow"]
