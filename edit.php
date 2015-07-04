<!DOCTYPE html>
<html>
<head>
	<title>Edit Guru</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
</head>
<body>

<?php 

include('koneksi.php');
$id = $_GET['id'];
$hasil = "SELECT * FROM guru WHERE ID_GURU=$id";
$query = mysql_query($hasil);

$row = mysql_fetch_array($query);

?>

	<form action="proses_edit.php" method="post">
		<div class="form-group">
			<div class="form-group">
				<input type="hidden" name="id" class="form-control" value="<?php echo $row["ID_GURU"]; ?>">
			</div>
			<div class="form-group">
				<label>Nama</label>
				<input type="text" name="nama" class="form-control" value="<?php echo $row["NAMA"]; ?>">
				</div>
				<div class="form-group">
					<label>Jenis Kelamin</label>
					<label class="radio-inline"><input type="radio" name="kelamin" value="Laki-laki">Laki-laki</label>
					<label class="radio-inline"><input type="radio" name="kelamin" value="Perempuan">Perempuan</label>
				</div>
				<div class="form-group">
					<label>Alamat</label>
					<textarea class="form-control" rows="3" name="alamat" required><?php echo $row["ALAMAT"]; ?></textarea>
				</div>
				<div class="form-group">
					<label>Tempat Lahir</label>
					<input type="text" name="tempatlahir" class="form-control"  value="<?php echo $row["TEMPAT_LAHIR"]; ?>" required>
					</div>
					<div class="form-group">
						<label>Tanggal Lahir</label>
						<input type="date" name="tglahir" class="form-control"  value="<?php echo $row["TANGGAL_LAHIR"]; ?>"required>
						</div>
						<div class="form-group">
							<input type="submit" value="Simpan" class="btn btn-primary">
							</div>
						</form>
					</body>
					</html>