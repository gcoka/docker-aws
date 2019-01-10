FROM alpine:3.8

# ビルド用ツールとaws-cliの追加
RUN apk upgrade && \
    apk add --no-cache \
    git jq make ca-certificates \
    python3 && \
    pip3 install --upgrade pip && \
    pip3 install awscli==<<AWS_CLI_VERSION>>

CMD ["/bin/sh"]
