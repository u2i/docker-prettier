FROM alpine
ARG PRETTIER_VERSION=2.0.2

RUN apk add --no-cache nodejs nodejs-npm && \
    npm install -g prettier@${PRETTIER_VERSION} && \
    npm cache clean --force && \
    apk del nodejs-npm

ENTRYPOINT [ "/usr/bin/prettier" ]
CMD ["--help"]
