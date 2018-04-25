#!/bin/sh
rsyslogd
cp /defaults/* /etc/dovecot/
echo -e $MAILUSER > /etc/dovecot/users
/usr/sbin/dovecot -c /etc/dovecot/dovecot.conf
tail -F /var/log/dovecot.log
