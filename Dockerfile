FROM golang:1.23.4 as builder

WORKDIR /app

COPY go.mod go.sum ./

COPY /user /app/user

COPY main.go /app

COPY test.db /app

RUN go mod tidy

EXPOSE 8080

CMD ["go", "run", "main.go"]