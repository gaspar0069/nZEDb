#!/bin/sh
while true; do echo "sleeping 300 seconds"; sleep 300; \
php ./update_binaries.php alt.binaries.boneless; \
php ./update_binaries.php alt.binaries.cores; \
php ./update_binaries.php alt.binaries.hdtv; \
date; done
