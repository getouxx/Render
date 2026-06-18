FROM alpine:latest
WORKDIR /app
RUN apk add --no-cache ca-certificates unzip wget
RUN wget https://github.com/pocketbase/pocketbase/releases/download/v0.22.10/pocketbase_0.22.10_linux_amd64.zip
RUN unzip pocketbase_0.22.10_linux_amd64.zip && rm pocketbase_0.22.10_linux_amd64.zip
EXPOSE 8090
CMD ["./pocketbase", "serve", "--http=0.0.0.0:8090", "--dir=/app/pb_data"]
