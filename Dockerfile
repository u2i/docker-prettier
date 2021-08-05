FROM alpine
ARG PRETTIER_VERSION=2.3.2
ARG PRETTIER_JAVA_VERSION=1.3.1

RUN apk add --no-cache nodejs npm && \
    npm install -g prettier@${PRETTIER_VERSION} && \
    npm install -g prettier-plugin-java@${PRETTIER_JAVA_VERSION} && \
    npm cache clean --force && \
    apk del npm

ENTRYPOINT [ "/usr/local/bin/prettier" ]
CMD ["--help"]
