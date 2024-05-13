<?php
$servename = "localhost";
$username = "root";
$password = "";
$database = "latihan";

$conn = mysqli_connect($servename, $username, $password, $database);

if (!$conn) {
    echo "Koneksi Gagal " . mysqli_connect_error();
}
//  else {
//     echo "Berhasil";
// }
