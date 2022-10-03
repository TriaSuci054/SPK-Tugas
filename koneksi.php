<?php
//KONVERSI PHP KE PHP 7
require_once "parser-php-version.php";

$host="localhost";
$user="root";
$pass="";
$dbName="spfuzzymamdani1";
$koneksi=mysql_connect($host,$user,$pass);
$db=mysql_select_db($dbName,$koneksi);
if(!$koneksi){
	echo"<center><font color='#ff0000'>Koneksi Gagal</font></center>";
	}
?>