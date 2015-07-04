<?php

$servername = "localhost";
$username 	= "root";
$password 	= "root";
$database 	= "juhri";	

$db_connect = mysql_connect($servername, $username, $password);

$db_select = mysql_select_db($database);

if (!$db_connect) {
	echo "Koneksi Gagal";
}

if (!$db_select) {
	echo "Database tidak ditemukan";
}


?>