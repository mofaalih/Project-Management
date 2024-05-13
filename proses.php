<?php
@session_start();

include('models/koneksi.php');

if (isset($_POST['login'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    $query = mysqli_query($conn, "SELECT * FROM t_user where username='$username' and password='$password'");
    $cek = mysqli_num_rows($query);

    if ($cek > 0) {
        $data = mysqli_fetch_assoc($query);

        if ($data['level'] == "admin") {
            $_SESSION['username'] = $username;
            $_SESSION['level'] = "admin";
            header('location:index.php?page=admin');
        } elseif ($data['level'] == "siswa") {
            $_SESSION['username'] = $username;
            $_SESSION['level'] = "siswa";
            header('location:index.php?page=user');
        } elseif ($data['level'] == "guru") {
            $_SESSION['username'] = $username;
            $_SESSION['level'] = "guru";
            header('location:index.php?page=user');
        } else {
            header('location:login.php');
        }
    }
}
