#!/bin/sh

if [ -d "/build/rootfs/" ]
then
	rsync -HvaxP /build/rootfs/ /
fi

chown -fhR gearbox:gearbox /var/cache/nginx /var/log/nginx /etc/nginx /usr/lib/nginx /usr/sbin/nginx /usr/share/nginx

