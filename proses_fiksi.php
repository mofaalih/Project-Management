<?php 
// tambah
if(isset($_POST['tambahbuku'])){
    $judul = $_POST['judul'];
    $pengarang = $_POST['pengarang'];
    $penerbit = $_POST['penerbit'];
    $tahun_terbit = $_POST['tahun_terbit'];
    $deskripsi = $_POST['deskripsi'];
    $kategori = $_POST['kategori'];


    $foto = $_FILES['foto']['name'];
    $file_temp = $_FILES['foto']['tmp_name'];
    move_uploaded_file($file_temp, 'picture/'.$foto);

    $query = mysqli_query($conn,"INSERT INTO t_fiksi (judul,pengarang,penerbit,tahun_terbit,deskripsi,kategori,foto) VALUES ('$judul','$pengarang','$penerbit','$tahun_terbit','$deskripsi','$kategori','$foto')");
}

// edit
if(isset($_POST['editbuku'])){
    $id_buku = $_POST['id_buku'];

    $judul = $_POST['judul'];
    $pengarang = $_POST['pengarang'];
    $penerbit = $_POST['penerbit'];
    $tahun_terbit = $_POST['tahun_terbit'];
    $deskripsi = $_POST['deskripsi'];
    $kategori = $_POST['kategori'];


    $query = mysqli_query($conn,"UPDATE t_fiksi SET judul='$judul', pengarang='$pengarang', penerbit='$penerbit', tahun_terbit='$tahun_terbit', deskripsi='$deskripsi' WHERE id_buku='$id_buku' ");
}

if(isset($_POST['hapusdata'])){
    $id_buku = $_POST['id_buku'];

    $query = mysqli_query($conn,"DELETE FROM t_fiksi WHERE id_buku='$id_buku'");
}


?>