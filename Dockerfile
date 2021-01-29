FROM alpine:3.13

COPY files/start.sh /start.sh

RUN apk add --update ca-certificates dovecot dovecot-lmtpd &&\
    chmod +x /start.sh &&\
    addgroup vmail &&\
    adduser -G vmail -h /vmail -H -D vmail &&\
    rm -rf /var/cache/apk/*

CMD ["/start.sh"]
