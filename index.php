
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Form - Pesan TI Juhri</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
  </head>

  <body>
<div class="container">
  
<div class="row">
  <div class="col-md-6">
    <h1>Contoh Formulir</h1>
    <form>
      <div class="form-group">
        <label>Nama</label>
        <input type="text" class="form-control" name="nama" placeholder="Nama Lengkap" autofocus required>
      </div>
      <div class="form-group">
      <label>Jenis Kelamin</label>
        <label class="radio-inline"><input type="radio" name="kelamin">Laki-laki</label>
<label class="radio-inline"><input type="radio" name="kelamin">Perempuan</label>
      </div>
      <div class="form-group">
        <label>Alamat</label>
        <textarea class="form-control" rows="5" name="alamat"></textarea>
      </div>

      <label>Tanggal Lahir</label>
      <select class="form-control">
      <?php
        for ($tgl=1; $tgl <= 31; $tgl++) { 
          echo "<option>".$tgl."</option>";
        }
      ?>
      </select>

      <?php
        $nama = "Ikbal";
        $alamat = "Garut";
      ?>


      <div class="form-group">
        <label>Foto</label>
        <input type="file">
        <p class="help-block">Pilih foto anda.</p>
      </div>
      <button type="submit" class="btn btn-primary">Simpan</button>
    </form>

          <table class="table">
        <thead>
          <tr>
            <th>No</th>
            <th>Nama</th>
            <th>Alamat</th>
          </tr>
        </thead>
        <tbody>
        <?php
          for ($i=1; $i <= 100 ; $i++) { 
        ?>
          <tr>
            <td><?php echo $i;?></td>
            <td><?php echo $nama;?></td>
            <td><?php echo $alamat;?></td>
          </tr>
        <?php
          }
        ?>
        </tbody>
      </table>
  </div>
</div>
</div>
    <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
