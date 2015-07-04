<?php
include ('koneksi.php');//koneksi MySQL
$nis = $_POST["nis"];//input nis
$nama = $_POST["nama"];//input nama

$sql = "INSERT INTO siswa (nis, nama) VALUES ('$nis', '$nama')";

if (mysqli_query($con, $sql)) { //Simpan data $sql
    echo "Data Berhasil Disimpan"; //Berhasil
} else {
    echo "Data Gagal Disimpan"; //Gagal
}

?>