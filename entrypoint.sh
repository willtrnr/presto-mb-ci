#! /bin/bash

mkdir -p /opt/presto/etc/catalog

OIFS=$IFS
for catalog in $PRESTO_CATALOGS; do
  echo 'connector.name=memory' > "/opt/presto/etc/catalog/$catalog.properties"
done
IFS=$OIFS

exec $@
