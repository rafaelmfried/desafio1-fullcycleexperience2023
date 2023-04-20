FROM golang:alpine

RUN mkdir /app
ADD . /app
WORKDIR /app
COPY go.mod ./

RUN go build -o desafio1

EXPOSE 8080

CMD ["/app/desafio1"]