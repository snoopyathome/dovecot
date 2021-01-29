#!/bin/sh
cp -R /defaults/* /etc/dovecot/
/usr/sbin/dovecot -c /etc/dovecot/dovecot.conf -F
