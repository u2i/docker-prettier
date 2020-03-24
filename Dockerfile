FROM node:alpine
ARG PRETTIER_VERSION=2.0.2

RUN npm install -g prettier@${PRETTIER_VERSION} && \
    npm cache clean --force

ENTRYPOINT [ "/usr/local/bin/prettier" ]
CMD ["--help"]
