FROM golang:1.15-alpine

WORKDIR /app

COPY go.mod .
COPY go.sum .
RUN go mod download

COPY *.go .

RUN go build -o /learn-docker

EXPOSE 8080

CMD [ "/learn-docker" ]