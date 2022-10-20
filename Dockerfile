FROM golang:1.19.2-alpine3.16

RUN apk update && apk add git
RUN apk add --update alpine-sdk

WORKDIR /go/src
COPY ./ /go/src

RUN go build main.go
CMD ["go", "run", "main.go"]
