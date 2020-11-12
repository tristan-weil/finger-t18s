FROM ghcr.io/tristan-weil/ttserver:v1.0.3

LABEL org.opencontainers.image.source https://github.com/tristan-weil/finger-t18s

COPY finger.config /ttserver/etc/ttserver.config
COPY content/      /ttserver/public/
