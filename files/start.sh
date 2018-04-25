#!/bin/sh
rsyslogd
cp /defaults/* /etc/dovecot/
/usr/sbin/dovecot -c /etc/dovecot/dovecot.conf
tail -F /var/log/maillog
