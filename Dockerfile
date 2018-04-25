FROM alpine:3.7

COPY files/etc/dovecot/ /etc/dovecot/
COPY files/start.sh /start.sh

RUN apk add --update ca-certificates dovecot rsyslog &&\
    chmod +x /start.sh &&\
    rm -rf /var/cache/apk/*

CMD ["/start.sh"]
