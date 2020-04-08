FROM alpine

RUN apk add --update bash jq

RUN wget https://github.com/pivotal-cf/om/releases/download/4.6.0/om-linux-4.6.0 -O /usr/local/bin/om && chmod +x /usr/local/bin/om

COPY check /opt/resource/check
COPY in /opt/resource/in
COPY out /opt/resource/out
