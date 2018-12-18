<!DOCTYPE html>
<html>
<header>
	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	
	<nav class="navibar bg-dark">
		
		<div class="row nav-white">
			<div class="col-sm-2">
				<a href="home.php" class="navLinks">fito.com</a>
			</div>
			<div class="col-sm-2">
				<a href="new.php" class="navLinks">Arrival</a>
			</div>
			<div class="col-sm-2 dropdown">
				<div class="dropbtn">Brands</div>
				<div class="dropdown-content">
					<a href="Nike.php">Nike</a>
					<a href="Adidas.php">Adidas</a>
					<a href="jordan.php">Air Jordan</a>
				</div>
			</div>
			<div class="col-sm-2">
				<a href="logout.php" class="navLinks">Logout</a>
			</div>
			<div class="col-sm-4">
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
<body style="background-color: lightgrey;">
	<form action="order.php" method="POST" name="order">
	<div class="col-lg-6">
	<?php
			include 'config.php';
			$nama = $_GET['nama'];
			$harga = $_GET['harga'];
			$link = $_GET['link']; 
			//var_dump($nama);
		?>
		<img src="<?php echo $link; ?>" class="foto-sepatu">
	</div>
	<div class="col-lg-6">
		<h1><?php echo $nama;?></h1>
		<div class="col-lg-6 teks-tengah teks-ukuran">
			<input type='hidden' name='nama' value='<?=$nama ?>'>
			<input type='hidden' name='link' value='<?=$link ?>'>
			<input type='hidden' name='harga' value='<?=$harga ?>'>
			<?php echo $harga; ?><br><br><br>
			Size
			<select name="ukuran">
				<option value="37">37</option>
				<option value="38">38</option>
				<option value="39">39</option>
				<option value="40">40</option>
				<option value="41">41</option>
				<option value="42">42</option>
				<option value="43">43</option>
				<option value="44">44</option>
				<option value="45">45</option>
			</select>
			<br><br><br>
			<input  onclick="href='cart.php'" type="submit" name="Submit" value="Add to cart!" class="tombol">
			<br>
		</div>
	</div>
	</form>

		<?php
		session_start();
    		if(isset($_POST['Submit'])) {
			include_once 'config.php';
			$ukuran = $_POST['ukuran'];
       		$nama = $_POST['nama'];
			$harga = $_POST['harga'];
			$link = $_POST['link']; 
			$username = $_SESSION['username'];
			//var_dump($username);
			//die();
        		
			$result = mysqli_query($mysqli, "INSERT INTO cart VALUES('{$ukuran}','{$harga}','{$username}','{$nama}','{$link}')");
			header("location:cart.php");
    }
    ?>

</body>
</html>
