FROM kong:2.2.0-alpine

LABEL org.opencontainers.image.source="https://github.com/reciideo-lms/api-gateway"

USER root
RUN luarocks install kong-oidc

USER kong
ENV KONG_PLUGINS=oidc
