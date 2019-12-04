#!/bin/sh
rsyslogd
cp -R /defaults/* /etc/dovecot/
adduser -G vmail -h /vmail -H -D vmail
/usr/sbin/dovecot -c /etc/dovecot/dovecot.conf
tail -F /var/log/dovecot.log
