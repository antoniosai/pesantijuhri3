<?php 

include ('koneksi.php');


$id = $_POST["id"];
$nama = $_POST["nama"];
$kelamin = $_POST["kelamin"];
$alamat = $_POST["alamat"];
$tempatlahir = $_POST["tempatlahir"];
$tglahir = $_POST["tglahir"];

$query = "UPDATE guru SET NAMA = '$nama', 
						  JENIS_KELAMIN = '$kelamin',
						  ALAMAT = '$alamat',
						  TEMPAT_LAHIR = '$tempatlahir',
						  TANGGAL_LAHIR = '$tglahir'
						WHERE ID_GURU = '$id'";

mysql_query($query);

header('location:tampilguru.php');

 ?>