<?php
@error_reporting(0);

switch ($_GET['page']) {

        // home
    case "admin":
        include 'view/home/home_administrator.php';
        break;

    case "user":
        include 'view/home/home_user.php';
        break;

        // kategori
    case "pelajaran":
        include 'view/kategori/buku_pelajaran.php';
        break;

    case "fiksi":
        include 'view/kategori/fiksi.php';
        break;

    case "biografi":
        include 'view/kategori/biografi.php';
        break;

        // laporan
    case "laporan":
        include 'view/laporan/data_peminjam.php';
        break;

        // profil
    case "struktur":
        include 'view/profil/struktur_organisasi.php';
        break;

    case "pertanyaan":
        include 'view/profil/pertanyaan_umum.php';
        break;

    case "panduan":
        include 'view/profil/panduan_perpustakaan.php';
        break;

    case "tatatertib":
        include 'view/profil/tata_tertib.php';
        break;

        // aktivitas
    case "berita":
        include 'view/aktivitas/berita.php';
        break;

    case "galeri":
        include 'view/aktivitas/galeri.php';
        break;

    case "pengumuman":
        include 'view/aktivitas/pengumuman.php';
        break;
}
