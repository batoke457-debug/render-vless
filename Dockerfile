FROM alpine:latest
RUN apk add --no-cache curl unzip
RUN curl -L -o xray.zip https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-64.zip && \
    unzip xray.zip && \
    chmod +x xray
COPY config.json /etc/xray/config.json
EXPOSE 10000
CMD ["./xray", "run", "-c", "/etc/xray/config.json"]
