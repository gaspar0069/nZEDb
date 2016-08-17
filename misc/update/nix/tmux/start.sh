#!/bin/sh
LC_ALL=en_US.UTF-8
LANG=en_US.UTF-8
LC_CTYPE=en_US.UTF-8
LANGUAGE=en_US.UTF-8

ORIGINAL_UMASK=`umask`;
umask 0002
php start.php
umask ${ORIGINAL_UMASK}
