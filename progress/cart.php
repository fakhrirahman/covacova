<!DOCTYPE html>
<html>
<?php
session_start();
include_once("config.php");
$username = $_SESSION['username'];
$result = mysqli_query($mysqli, "SELECT * FROM cart WHERE username= '{$username}'");
//var_dump($result);
?>

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
					<a href="#">Nike</a>
					<a href="#">Adidas</a>
					<a href="#">Air Jordan</a>
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
<body style="background-color: lightgrey">
	<h1>My Cart</h1>
	<center>
		<table class="table-cart foto-cart">
		<?php
        while($user_data = mysqli_fetch_array($result)) {
		echo "<tr>";
        echo "<td><img src=".$user_data['link']."></td>";
        echo "<td>".$user_data['nama']."</td>";
        echo "<td>".$user_data['ukuran']."</td>";
        echo "<td>".$user_data['harga']."</td>";
        echo "</td>";
        echo "</tr>";  
        } ?>
		</table><br><br>
		<a href="bayar.php" class="tombol">Bayar</a><br><br><br><br>
	</center>

		<div class="footer">
		<table style="width:100%">
		<th align="left">&nbsp;social</br><img src="https://cdn.vectorlogosupply.com/logos/large/2x/instagram-glyph-1-png-transparent-logo.png" style="width:30px; height:30px">&nbsp;<img src="https://image.flaticon.com/icons/svg/54/54300.svg" style="width:30px; height:30px"><img src="https://mbtskoudsalg.com/images1280_/black-facebook-logo-png-4.png" style="width:30px; height:30px"></th>
		<th></br>customer service</br><img src="https://png.icons8.com/windows/1600/whatsapp.png" style="width:30px; height:30px">&nbsp;&nbsp;: +6288888888</br><img src="https://cdn4.iconfinder.com/data/icons/proglyphs-mailing-and-messaging/512/Chat_Active-512.png" style="width:30px; height:30px">&nbsp;&nbsp;:@fitocom</th>
		<th>about us&nbsp;</br>&nbsp;</th>
		</table>
	</div>
	
</body>
</html>
