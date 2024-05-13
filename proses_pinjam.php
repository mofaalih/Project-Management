<?php 
if(isset($_POST['pinjam'])){
    $judul = $_POST['judul'];
    $pengarang = $_POST['pengarang'];
    $penerbit = $_POST['penerbit'];
    $tahun_terbit = $_POST['tahun_terbit'];
    $deskripsi = $_POST['deskripsi'];
    $kategori = $_POST['kategori'];
    $nama = $_POST['nama'];

    $query = mysqli_query($conn,"INSERT INTO t_peminjam (judul,pengarang,penerbit,tahun_terbit,deskripsi,kategori,nama) VALUES ('$judul','$pengarang','$penerbit','$tahun_terbit','$deskripsi','$kategori','$nama')");
}
?>