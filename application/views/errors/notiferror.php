<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

	<title>404 HTML Template by Colorlib</title>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,700" rel="stylesheet">

	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="<?= base_url('assets'); ?>/colorliberror/css/style.css" />
</head>

<body>

	<div id="notfound">
		<div class="notfound">
			<div class="notfound-404">
				<h1>4<span></span>4</h1>
			</div>
			<h2>Oops! Halaman tidak dapat ditemukan</h2>
			<p>Maaf Halaman yang anda tuju tidak dapat diakses / tidak ada</p>
			<a href="<?php
							if (($this->session->userdata['level'] == 'admin')) {
								echo base_url('admin');
							} else if (($this->session->userdata['level'] == 'user')) {
								echo base_url('user');
							}
							?>">Kembali Ke Dashboard</a>
		</div>
	</div>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>


