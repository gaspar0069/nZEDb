#!/bin/bash
#Unwanted TV shows
echo php delete_releases.php -f \'categoryid BETWEEN 5000 AND 5999 AND searchname like \"$*%\"\' >> showdelete2.sh
