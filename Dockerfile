FROM alpine:3.12

COPY files/start.sh /start.sh

RUN apk add --update ca-certificates dovecot dovecot-lmtpd &&\
    chmod +x /start.sh &&\
    rm -rf /var/cache/apk/*

CMD ["/start.sh"]
