#!/bin/sh
chown -R $UID:$GID /zerobin /etc/nginx /etc/php7 /var/log /var/lib/nginx /tmp /etc/s6.d
exec su-exec $UID:$GID /sbin/tini -- /bin/s6-svscan /etc/s6.d
