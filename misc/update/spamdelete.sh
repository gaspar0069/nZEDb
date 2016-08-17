#!/bin/bash
php delete_releases.php -f 'groupid = 70 AND name regexp "^[^ ]+x264(.HQ)?-[a-z]{3}.(nfo|par2) \[[0-9]+/[0-9]+\] - \"" AND fromname like "free@%"'
php delete_releases.php -f 'groupid IN (71,74) AND name regexp "\.R5.*\.(x264|XviD)-[a-z]{3}\.(nfo|par|rar)"'
php delete_releases.php -f 'groupid IN (71,74) AND name regexp "[^ ]+(BD|BR|DVD|HD|\.)R(ip|5|6).((AC3|English|EN|HQ|x264)\.)*(x264|XviD)-[a-z]{3}.(part[0-9]+.)?(nfo|par2|rar)? \[[0-9]+/[0-9]+\] - \"" AND fromname REGEXP "[[:upper:]]+[[:lower:]]*[0-9]*@"'
php delete_releases.php -f 'groupid IN (71,74) AND name regexp "^[^ ]+(NTSC|PAL|MULTi).DVD[R5]?-[a-z]{3}.(nfo|par2) \[[0-9]+/[0-9]+\] - \"" AND fromname REGEXP "[[:upper:]]+-?[[:lower:]]*@"'
php delete_releases.php -f 'groupid IN (71,74) AND name regexp "^[^ ]+DVD[R5]?.(NTSC|PAL|MULTi)-[a-z]{3}.(nfo|par2) \[[0-9]+/[0-9]+\] - \"" AND fromname REGEXP "[[:upper:]]+-?[[:lower:]]*@"'
php delete_releases.php -f 'groupid IN (71,74) AND name regexp "^[^ ]+x264(.HQ)?-[a-z]{3}.(nfo|par2|part[0-9]+.rar) \[[0-9]+/[0-9]+\] - \"" AND fromname REGEXP "[[:upper:]]+-?[[:lower:]]*@"'
php delete_releases.php -f "groupid IN (71,74) and (name like '%.dvdscreener.%' OR name like '%.dvdscr.%')"

#php delete_releases.php -f "groupid = 74 and fromname like 'Yenc@power-post.org%' and name like '%.(2015).%'"

php clear_experience.php "http://tinyurl.com/n7has8b"
php clear_experience.php "Movies only in High Quality Experience"
php clear_experience.php "http://x.co/1o3Jd"
php clear_experience.php "The.Two.Faces.of.January.2014"


#php delete_releases.php 'size < 100000000 and totalpart = 7 AND groupid=11 AND fromname REGEXP "[a-z0-9_-]+@([a-z0-9_-]+\.)+[a-z0-9]{2,4} \\\([a-z0-9_.-]+\\\)"'
#php delete_releases.php 'size < 1000000 and totalpart = 1 AND groupid=11'
php delete_releases.php -f 'groupid IN (23, 51, 95) AND name REGEXP "[0-9]{8,}-[0-9]{8,}-[0-9]{8,}"'
php delete_releases.php -f 'groupid IN (23, 51, 95) AND name REGEXP "[0-9a-f]{8,}-[0-9a-f]{4,}-[0-9a-f]{4,}"'
php delete_releases.php -f 'groupid IN (23, 51, 95) AND name REGEXP "^[0-9a-z]{20,}"'
php delete_releases.php -f 'categoryid >7000 and name like "%.bin%"'
php delete_releases.php -f 'groupid = 95 AND name like "%KNTUP%"'
php delete_releases.php -f 'groupid = 95 AND name REGEXP "^[0-9a-z]{8,}-[0-9a-f]{4,}-[0-9a-f]{4,}"'
php delete_releases.php -f 'groupid =157 AND name like "% APPS %" AND name like "%www.town.ag%"';
php delete_releases.php -f  'groupid = 157 and categoryid=7010 and name like "%[ TV ]%" and rageid = -1 and searchname regexp "[a-z0-9_]{25}"'

# Foreign movies
php delete_releases.php -f 'categoryid =2010'
php delete_releases.php -f 'categoryid BETWEEN 2000 AND 3000 AND name like "%.CAM.%"'
php delete_releases.php -f 'categoryid BETWEEN 2000 AND 3000 AND name like "%.screener.%"'
php delete_releases.php -f 'categoryid BETWEEN 2000 AND 3000 AND (name like "%.dvdscreener.%" OR name like "%.dvdscr.%")'

#Foriegn TV shows
php delete_releases.php -f ' categoryid =5020' 
php delete_releases.php -f ' categoryid =5060' 

#Unwanted TV shows
#php delete_releases.php -f 'categoryid BETWEEN 5000 AND 5999 AND searchname like "The.Amazing.Race.%"'
#php delete_releases.php -f 'categoryid BETWEEN 5000 AND 5999 AND searchname like "American.Idol.%"'
#php delete_releases.php -f 'categoryid BETWEEN 5000 AND 5999 AND searchname like "American.Ninja.Warrior%"'
#php delete_releases.php -f 'categoryid BETWEEN 5000 AND 5999 AND searchname like "Anger.Management%"'
#php delete_releases.php -f 'categoryid BETWEEN 5000 AND 5999 AND searchname like "The.Biggest.Loser%"'
#php delete_releases.php -f 'categoryid BETWEEN 5000 AND 5999 AND searchname like "Big.Brother%"'
#php delete_releases.php -f 'categoryid BETWEEN 5000 AND 5999 AND searchname like "Celebrity.Big.Brother%"'
#php delete_releases.php -f 'categoryid BETWEEN 5000 AND 5999 AND searchname like "Chelsea.Lately.%"'
#php delete_releases.php -f 'categoryid BETWEEN 5000 AND 5999 AND searchname like "Cougar.Town.%"'
#php delete_releases.php -f 'categoryid BETWEEN 5000 AND 5999 AND searchname like "Degrassi.%"'
#php delete_releases.php -f 'categoryid BETWEEN 5000 AND 5999 AND searchname like "Eastenders%"'
#php delete_releases.php -f 'categoryid BETWEEN 5000 AND 5999 AND searchname like "Holby.City.%"'
#php delete_releases.php -f 'categoryid BETWEEN 5000 AND 5999 AND searchname like "Jimmy.Fallon.%"'
#php delete_releases.php -f 'categoryid BETWEEN 5000 AND 5999 AND searchname like "MasterChef.%"'
#php delete_releases.php -f 'categoryid BETWEEN 5000 AND 5999 AND searchname like "Melissa.and.Joey.%"'
#php delete_releases.php -f 'categoryid BETWEEN 5000 AND 5999 AND searchname like "My.Kitchen.Rules.%"'
#php delete_releases.php -f 'categoryid BETWEEN 5000 AND 5999 AND searchname like "The.Big.Bang.Theory.%"'
#php delete_releases.php -f 'categoryid BETWEEN 5000 AND 5999 AND searchname like "The.Real.Housewives.%"'
#php delete_releases.php -f 'categoryid BETWEEN 5000 AND 5999 AND searchname like "Shortland.Street.%"'
#php delete_releases.php -f 'categoryid BETWEEN 5000 AND 5999 AND searchname like "South.Beach.Tow.%"'

#php delete_releases.php -f 'categoryid BETWEEN 5000 AND 5999 AND rageid = "35771"'	# Almost Human
#php delete_releases.php -f 'categoryid BETWEEN 5000 AND 5999 AND rageid = "38478"'	# At Midnight
#php delete_releases.php -f 'categoryid BETWEEN 5000 AND 5999 AND rageid = "2792"'	# Big Brother UK
#php delete_releases.php -f 'categoryid BETWEEN 5000 AND 5999 AND rageid = "2870"'	# Bones
#php delete_releases.php -f 'categoryid BETWEEN 5000 AND 5999 AND rageid = "3918"'	# How I met your mother
#php delete_releases.php -f 'categoryid BETWEEN 5000 AND 5999 AND rageid = "29291"'	# Long Island Medium
#php delete_releases.php -f 'categoryid BETWEEN 5000 AND 5999 AND rageid = "20678"'	# The Middle
#php delete_releases.php -f 'categoryid BETWEEN 5000 AND 5999 AND rageid = "27926"'	# Mob Wives
#php delete_releases.php -f 'categoryid BETWEEN 5000 AND 5999 AND rageid = "25742"'	# Raising Hope
#php delete_releases.php -f 'categoryid BETWEEN 5000 AND 5999 AND rageid = "5227"'	# Smallville
#php delete_releases.php -f 'categoryid BETWEEN 5000 AND 5999 AND rageid = "5270"'	# So You Think You Can Dance


php delete_releases.php -f 'name like "b5fda91a7a932%"'
php delete_releases.php -f "groupid = 74 AND name like '%.HEBSUB%'"


php delete_releases.php "groupid = 39 AND categoryid BETWEEN 6000 AND 7000 AND (name LIKE '%\"ATKE%' OR name LIKE '%\"CECO%' OR name LIKE '%\"8SL%' )";
