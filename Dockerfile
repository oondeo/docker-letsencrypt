FROM oondeo/alpine

ENV LETSENCRYPT_VER=0.5.0-r0


RUN echo @community http://liskamm.alpinelinux.uk/edge/community >> /etc/apk/repositories && \
    apk add --update --no-cache  py-acme@community letsencrypt@community=$LETSENCRYPT_VER && \
    mkdir -p /etc/letsencrypt/www/.well-known/ && \
    adduser -S -H -s /bin/nologin letsencrypt && chown -R letsencrypt /etc/letsencrypt

ADD nginx.conf /etc/letsencrypt/

VOLUME ["/etc/letsencrypt"]

USER letsencrypt

CMD [ "/usr/bin/letsencrypt" ]




