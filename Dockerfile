FROM alpine:latest

RUN apk add bash curl ffmpeg git nodejs \
  && curl -qL https://www.npmjs.com/install.sh | sh

RUN mkdir -p /opt/earthx
COPY / /opt/earthx

WORKDIR /opt/earthx

RUN npm install

ENTRYPOINT ["/bin/bash", "-c", "sleep infinity"]
