<html>
<?php 
	session_start();
?>
<header>
	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	
	<nav class="navibar bg-dark">
		
		<div class="row nav-white">
			<div class="col-sm-2">
				<a href="homein.php" class="navLinks">fito.com</a>
			</div>
			<div class="col-sm-2">
				<a href="newin.php" class="navLinks">Arrival</a>
			</div>
			<div class="col-sm-2 dropdown">
				<div class="dropbtn">Brands</div>
				<div class="dropdown-content">
					<a href="#">Nike</a>
					<a href="#">Adidas</a>
					<a href="#">Air Jordan</a>
				</div>
			</div>
			<div class="col-sm-2">
					<a href="logout.php" class="navLinks">Logout</a>
			</div>
				<input type="text" name="cari" placeholder="Search.." class="nav-black">
			</div>
		</div>
	</nav>
	<div class="navtop">
		<td><img src="http://pngimg.com/uploads/adidas/adidas_PNG17.png" style="width: 50px; height: 30px"></td>
		<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Logo_NIKE.svg/1200px-Logo_NIKE.svg.png" style="width: 60px; height: 30px"></td>
		<td>&nbsp;&nbsp;<img src="https://s3.amazonaws.com/freebiesupply/large/2x/air-jordan-logo-png-transparent.png" style="width: 40px; height: 40px"></td>
	</div>
	<hr class="no-margin-line">
</header>
<body style="background-color: lightgrey">
	<?php include 'config.php';
	$result = mysqli_query($mysqli, "SELECT * FROM sepatu ORDER BY id_sepatu DESC");
	?>
	<?php 
    while($row = mysqli_fetch_array($result)) {

		$nama = $row['nama'];
		$harga = $row['harga'];
		$link= $row['link'];
		$id_sepatu = $row['id_sepatu'];      
	?><a href="order.php?nama=<?php echo $nama; ?>&harga=<?php echo $harga; ?>&link=<?php  echo $link; ?>&id_sepatu=<?php  echo $id_sepatu; ?>"> <img src="<?php echo $row['link'];?>" class="margin-bawah"> <?php  
    }  
    ?>

</body>
</html>
