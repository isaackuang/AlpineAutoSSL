FROM isaackuang/openresty:1.13.6.2

RUN apk add --no-cache --virtual .build-deps \
        build-base curl make  && \
    apk add --no-cache --progress bash && \
    luarocks install lua-resty-auto-ssl && \
    apk del .build-deps

COPY config /