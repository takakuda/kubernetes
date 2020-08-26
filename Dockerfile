FROM golang:1.15.0-alpine3.12

EXPOSE 8080

COPY ./main.go ./

RUN go build -o ./go-app ./main.go

USER nobody

ENTRYPOINT ["./go-app"]
