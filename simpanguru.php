<?php
include ('koneksi.php');
$nip = $_POST["nip"];
$nama = $_POST["nama"];
$kelamin = $_POST["kelamin"];
$alamat = $_POST["alamat"];
$tempatlahir = $_POST["tempatlahir"];
$tglahir = $_POST["tglahir"];

$sql = "INSERT INTO guru (ID_GURU, NAMA, JENIS_KELAMIN, ALAMAT, TEMPAT_LAHIR, TANGGAL_LAHIR) VALUES ('$nip', '$nama', '$kelamin', '$alamat', '$tempatlahir', '$tglahir')";

if (mysql_query($sql)) { //Simpan data $sql
    echo "Data Berhasil Disimpan"; //Berhasil
    header('location:tampilguru.php');	
} else {
    echo "Data Gagal Disimpan"; //Gagal
}


?>