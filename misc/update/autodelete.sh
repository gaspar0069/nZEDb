#!/bin/bash
php delete_releases.php -f 'size < 100000000 and totalpart = 7 AND groupid=11 AND fromname REGEXP "[a-z0-9_-]+@([a-z0-9_-]+\.)+[a-z0-9]{2,4} \\\([a-z0-9_.-]+\\\)"'
php delete_releases.php -f 'size < 1000000 and totalpart = 1 AND groupid=11'
php delete_releases.php -f 'groupid=23 AND name REGEXP "[0-9]{8,}-[0-9]{8,}-[0-9]{8,}"'
php delete_releases.php -f '(groupid = 23 OR groupid = 51) AND name REGEXP "[0-9a-f]{8,}-[0-9a-f]{4,}-[0-9a-f]{4,}"'
php delete_releases.php -f 'categoryid >7000 and name like "%.bin%"'
php delete_releases.php -f 'name like "%KNTUP%"'

php delete_releases.php -f 'name like "%b5fda%"'
php delete_releases.php -f "name like '%HEBSUB%'"
