FROM alpine:3.11

COPY files/start.sh /start.sh

RUN apk add --update ca-certificates dovecot dovecot-lmtpd rsyslog &&\
    chmod +x /start.sh &&\
    rm -rf /var/cache/apk/*

CMD ["/start.sh"]
