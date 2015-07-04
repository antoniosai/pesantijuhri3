<?php 

include('koneksi.php');

$id = $_GET['id'];
$query = "DELETE FROM guru WHERE ID_GURU=$id";

mysql_query($query);

header('location:tampilguru.php');

 ?>