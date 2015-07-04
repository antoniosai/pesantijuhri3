<!DOCTYPE html>
<html>
<head>
	<title>Tampil Guru</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
</head>
<body>
<h1>Data Guru</h1>
<table class="table">
	<tr>
		<th>Nama</th>
		<th>Jenis Kelamin</th>
		<th>Alamat</th>
		<th>Tempat Lahir</th>
		<th>Tanggal Lahir</th>
	</tr>

	<?php 

	include ("koneksi.php");
	$query = "SELECT * FROM guru";
	$hasil = mysql_query($query);

	while ($row = mysql_fetch_array($hasil)) {  ?>

	
	<tr>
		<td><?php echo $row["NAMA"]; ?></td>
		<td><?php echo $row["JENIS_KELAMIN"]; ?></td>
		<td><?php echo $row["ALAMAT"]; ?></td>
		<td><?php echo $row["TEMPAT_LAHIR"]; ?></td>
		<td><?php echo $row["TANGGAL_LAHIR"]; ?></td>
	</tr>

	<?php } ?>
</table>
</body>
</html>