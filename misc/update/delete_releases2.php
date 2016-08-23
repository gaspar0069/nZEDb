<?php

error_reporting(E_ALL);

require("config.php");
//require_once(WWW_DIR."/lib/releases.php");
require_once( nZEDb_LIB."/Releases.php");

define("MAXCOLUMNS", 300);  //arbitrary upper boundary for the display parameter.
function bound($x, $min, $max) { return min(max($x, $min), $max); } //Mostly to limit column values to reasonable numbers.


$force = false;
$one_column_mode = false;
$options = "1f";
$opts = getopt( $options );
if (isset( $opts["f"] )) {
  $force = true;
}
if (isset( $opts["1"] )) {
  $one_column_mode = true;
}

// Grab column width from environment
$env_columns = getenv('COLUMNS');
  echo "ENV COLUMNS".$env_columns."ok";

if (is_numeric($env_columns)) {
  $env_columns = bound($env_columns, 1, MAXCOLUMNS);
} else {
  $env_columns = 80;
}

foreach( $opts as $o => $a )
{
  while( $k = array_search( "-" . $o, $argv ) )
  {
    if( $k )
      unset( $argv[$k] );
    if( preg_match( "/^.*".$o.":.*$/i", $options ) )
      unset( $argv[$k+1] );
  }
}
$argv = array_merge( $argv );

if (count($argv) <= 1) {
	echo "No delete string not specified. Exiting...\r\n";
	exit;
}
unset($argv[0]); //strip off exec string;

$db = new DB();
$releases = new releases();
$release_ids = array();
$sql = sprintf("SELECT id,name FROM releases WHERE %s;",implode("",$argv));
echo $sql."\r\n";

$relids = $db->query($sql);

//create a new array of just release_ids
foreach ($relids as $i) {
   $release_ids[] = $i['id'];
}

$hits = sizeof($release_ids);
if ($hits == 0) { 
	echo "No hits, exiting...\r\n"; 
	exit;
}
elseif ($hits > 100) {
	echo "Too many hits reached, showing first 100...\r\n";
}


/* Print release names */
	$column_offset = ceil(min(100, $hits) / 2);
	$j=1;
	if ($one_column_mode) {
		foreach (array_slice($relids, 0, 100, TRUE) as $i) { //only first 100 elements
			echo sprintf("%4d. %-".($env_columns-5)."s\r\n",$j++,substr($i['name'],0,$env_columns-5));
		}
		echo "env-columns = ".$env_columns."\r\n";
	}
	else {
		for ($i=0; $i < (min(100,$hits) / 2); $i++) {
			echo sprintf("%4d. %-78s",$i+1, substr($relids[$i]['name'],0,78));
			if (($column_offset != 0) && ($i + $column_offset) < min(100,$hits)) {
				echo sprintf("%4d. %-78s",$i+$column_offset+1, substr($relids[$i + $column_offset]['name'],0,78));
			}
			echo "\r\n";
		}
	}
//	if ($j % 2 == 0) { echo "\r\n"; } //Echo terminal CR if hits were odd.

/* End print release names */


if ($force == true) 
{
	echo "Found ".$hits." entries. Delete forced. ";
}
else
{
  echo "Found ".$hits." entries. Delete? ";

  $handle = fopen ("php://stdin","r");
  $line = fgets($handle);
  if(trim($line) != 'y'){
      echo "ABORTING!\n";
      exit;
  }
}

echo "\r\nDeleting...";
$chunksize = 200;
for ($i=0; $i < (int)($hits / $chunksize); $i++) {
 $releases->delete(array_slice($release_ids, ($i * $chunksize), $chunksize, true));
 echo "...".($chunksize * ($i + 1));
//$releases->delete($release_ids);
}
if (($hits % $chunksize) != 0) {
	$releases->delete(array_slice($release_ids, (($hits % $chunksize) * -1)));
	echo "...".$hits."\r\n";
}
echo "\r\nDone!\r\n";


?>
