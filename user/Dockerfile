FROM golang:1.18-alpine

RUN mkdir /app

RUN addgroup -S ddgroup
RUN adduser -S -D -h /app dduser ddgroup
RUN chown -R dduser:ddgroup /app
USER dduser

COPY main.go /app

EXPOSE 8080
CMD go run /app/main.go





