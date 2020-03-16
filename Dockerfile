FROM alpine:3.6

RUN apk --no-cache add python \
    libsodium \
    wget

ADD ./ /opt/ssr

WORKDIR /opt/ssr/shadowsocks

CMD python local.py -c /opt/ssr/config.json
