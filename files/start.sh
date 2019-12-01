#!/bin/sh
rsyslogd
cp -R /defaults/* /etc/dovecot/
/usr/sbin/dovecot -c /etc/dovecot/dovecot.conf
tail -F /var/log/dovecot.log
