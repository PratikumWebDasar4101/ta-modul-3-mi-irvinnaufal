<?php
  include "TA.php";
  $name 	= $_POST['nama'];
  $nim 		= $_POST['nim'];
  $fakultas = $_POST['fakultas'];
  $jeniskelamin = $_POST['jeniskelamin'];
  $conn = mysqli_connect($host, $user, $pass, $db) or die ("Koneksi gagal");
  $mysqli = "INSERT INTO dataformulir (nim, nama, fakultas, jeniskelamin, foto) VALUES ('$nim', '$nama', '$fakultas' , '$jeniskelamin' , '$foto')";
  $result = mysqli_query($conn, $mysqli);
  echo "Input berhasil";
  mysqli_close($conn);
?>
<?php   
  $name 	= $_POST['nama'];
  $nim 		= $_POST['nim'];
  $fakultas = $_POST['fakultas'];
  $jeniskelamin = $_POST['jeniskelamin'];	
  
   		$nama_foto = $_FILES['foto']['name'];
        $tmp_foto = $_FILES['foto']['tmp_name'];
        $dir_foto = "photos/";
        $target_foto = $dir_foto . $nama_foto;
        if (!move_uploaded_file($tmp_foto, $target_foto))
            die("Foto gagal di upload..!!");
        $query = $pdo -> prepare("INSERT INTO tb_mahasiswa VALUES ('$nim','$nama','$fakultas','$jk','$target_foto')");
        $query -> execute();
        if ($query)
            header("Location: .php");
        else
            die("Tambah data Gagal..");
 ?>