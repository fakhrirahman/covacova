<?php 
// mengaktifkan session php
session_start();
 
// menghubungkan dengan koneksi
include 'config.php';
 
if($_SESSION['status'] == "login"){	
	header("location:cart.php");
}else{
	header("location:login.php?pesan=failed");
}
?>