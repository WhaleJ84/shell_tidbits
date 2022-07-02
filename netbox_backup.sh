#!/bin/sh

cd /opt/netbox
sudo -u $POSTGRES_USER pg_dump netbox > netbox.sql
tar -czf netbox_media.tar.gz netbox/media/

mail -A /opt/netbox/netbox.sql -A /opt/netbox/netbox_media.tar.gz -s "$(date) Netbox backup" $NETBOX_ADMIN_EMAIL < /dev/null
