FROM alpine:3.8

# ビルド用ツールとaws-cliの追加
RUN apk upgrade && \
    apk add --no-cache \
    git jq make ca-certificates \
    py-pip python && \
    pip install --upgrade pip && \
    pip install awscli==<<AWS_CLI_VERSION>> && \
    apk del --purge py-pip

CMD ["/bin/sh"]
