<!DOCTYPE html>
<html lang="en">

<head>
	<title>INTI CSIRT</title>

	<meta name="description" content="IMSIS | PT Industri Telekomunikasi Indoenesia" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta charset="utf-8" />
	<meta property="og:locale" content="en_US" />
	<meta property="og:type" content="article" />
	<meta property="og:title" content="IMSIS | PT Industri Telekomunikasi Indoenesia" />
	<meta property="og:url" content="https://my.inti.co.id/reseller/" />
	<meta property="og:site_name" content="IMSIS | PT Industri Telekomunikasi Indoenesia" />
	<link rel="shortcut icon" href="<?php echo base_url(); ?>assets/images/ini-inti.png" />

	<link rel="stylesheet" href="<?php echo base_url() ?>assets-landing/css/bootstrap.min.css">
	<link rel="stylesheet" href="<?php echo base_url() ?>assets-landing/css/font-awesome.min.css">
	<link rel="stylesheet" href="<?php echo base_url() ?>assets-landing/css/aos.css">
	<link rel="stylesheet" href="<?php echo base_url() ?>assets-landing/css/owl.carousel.min.css">
	<link rel="stylesheet" href="<?php echo base_url() ?>assets-landing/css/owl.theme.default.min.css">
	<link rel="stylesheet" href="<?php echo base_url() ?>assets-landing/css/view-landing.css">
	<!-- Style.css -->
	<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets\css\style.css">

	<!--begin::Fonts-->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<!-- MAIN CSS
	<link rel="stylesheet" href="<?php echo base_url() ?>assets-landing/css/templatemo-digital-trend.css"> -->

	<!-- SCRIPTS -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<script src="<?php echo base_url() ?>assets-landing/js/jquery.min.js"></script>
	<script src="<?php echo base_url() ?>assets-landing/js/bootstrap.min.js"></script>
	<script src="<?php echo base_url() ?>assets-landing/js/aos.js"></script>
	<script src="<?php echo base_url() ?>assets-landing/js/owl.carousel.min.js"></script>
	<script src="<?php echo base_url() ?>assets-landing/js/smoothscroll.js"></script>
	<script src="<?php echo base_url() ?>assets-landing/js/custom.js"></script>

	<style>
		h5,
		h4 {
			font-family: poppins;
			text-align: left;
			color: white;
			margin-left: 430px;
			margin-top: 5px;
		}

		h1 {
			font-family: poppins;
			color: white;
			margin-left: 130px;
			margin-top: 60px;
		}

		footer {
			height: 100px;
			background-color: #150544;
			color: white;
			font-family: poppins;
			text-align: center;
			border-radius: 5px;
		}

		.carousel-inner {
			border-radius: 20px;
		}

		.carousel-item {
			margin-top: 50px;
		}

		.carousel-item img {
			left: 0;
			min-width: 100%;
			height: 474px;
			border-radius: 50px;
		}

		.left {
			min-width: 30%;
			height: 50%;
			position: absolute;
			top: 35%;
			left: -2%;
			background-color: #150544;
			border-radius: 20px;
			z-index: 9;
		}
	</style>

</head>

<!-- MENU BAR -->
<nav class="navbar navbar-expand-lg" style="margin-top: -10px;">

	<div class="container" style="width: 100%; ">
		<a class="navbar-brand" href="#" style="padding: 15px; margin-top: -10px; margin-left:0px;">
			<img src="<?php echo base_url() ?>assets/images/ini-inti.png" class="" alt="logo umprop inti" width="75">
		</a>

		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<ul class="navbar-nav ml-auto" style="margin-top:25px;">
			<div class="collapse navbar-collapse" id="navbarNav" style="padding-right: -60px; font-family:poppins;">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item">
						<a href="<?php echo site_url('Home'); ?>" class="nav-link" style="color: black;">Home</a>
					</li>
					<li class="nav-item">
						<a href="<?php echo site_url('Content/profil'); ?>" class="nav-link" style="color: black;">Profil</a>
					</li>
					<li class="nav-item">
						<a href="<?php echo site_url('Content/layanan'); ?>" class="nav-link" style="color: black;">Layanan INTI-CSIRT</a>
					</li>
					<li class="nav-item">
						<a href="<?php echo site_url('Content'); ?>" class="nav-link" style="color: black;">RFC 2350</a>
					</li>
					<li class="nav-item dropdown" style="margin-left:-10px;">
						<a class="nav-link dropdown-toggle" href="" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color: black;">
						</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
							<li><a class="dropdown-item" href="<?php echo site_url('Content/infodok/'); ?>">Informasi Dokumen</a></li>
							<li><a class="dropdown-item" href="<?php echo site_url('Content/infokon/'); ?>">Informasi Kontak</a></li>
							<li><a class="dropdown-item" href="<?php echo site_url('Content/tentang/'); ?>">Tentang INTI-CSIRT</a></li>
							<li><a class="dropdown-item" href="<?php echo site_url('Content/kebijakan/'); ?>">Kebijakan</a></li>
							<li><a class="dropdown-item" href="<?php echo site_url('Content/dokpen/'); ?>">Dokumen Legal Pendukung</a></li>
							<li><a class="dropdown-item" href="<?php echo site_url('Content/alper/'); ?>">Alamat Pelaporan</a></li>
						</ul>
					</li>
					<li class="nav-item">
						<a href="<?php echo site_url('Content/siber'); ?>" class="nav-link" style="color: black;">Aduan Siber</a>
					</li>
					<li class="nav-item">
						<a href="<?php echo site_url('Content/hubungi'); ?>" class="nav-link" style="color: black;">Hubungi Kami</a>
					</li>
				</ul>
			</div>
		</ul>
	</div>
</nav>

<section>
	<div class="container" style="border-radius: 20px; position: relative;">
		<div class="left">
			<p style="color: white; font-family:poppins; margin-top:30px; margin-left:35px;">PT Industri Telekomunikasi Indoenesia<br>(INTI-CSIRT)</p>
			<h3 style="color: white; font-family:poppins; margin-top:10px; margin-left:35px;">CSIRT INTI</h3>
			<h5 style="color: white; font-family:poppins; margin-top:10px; margin-left:35px;">Computer Securty Incident<br>Response Team</h5>
			<button type="submit" class="btn btn-labeled" style="background-color: #23BBD1; color:white; font-family: poppins; margin-left:35px; margin-top:20px; height:40px; width:100px">
				<a href="<?php echo base_url('auth') ?>" style="color: white;"> Login <span class="btn-label"><i class="fa fa-chevron-right"></i></span></button>
		</div>
		<div id="carouselSlider" class="carousel slide">
			<div class="carousel-inner">
				<div class="carousel-item-active">
					<img class="d-block w-100 img-fluid" src="<?php echo base_url() ?>assets/images/GDPR.jpg" alt="First slide">
				</div>
			</div>
			<div class="carousel-item">
				<img class="d-block w-100 img-fluid" src="<?php echo base_url() ?>assets/images/GLOBE.jpg" alt="Second slide">
			</div>
			<a class="carousel-control-prev" href="#carouselSlider" role="button" data-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="carousel-control-next" href="#carouselSlider" role="button" data-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
</section>
<!-- HERO -->
<section class="" style="width:100%; height: 800px;">
	<div class="container" style="background-color: #150544; width:970px; height:600px; border-top-right-radius: 40px; margin-right:100px; margin-top:80px;">
		<h2 style="border-style: solid; width:22%; padding: 13px; border-radius:20px; color:white; margin-left:100px; margin-top:35px;">Aduan Siber</h2>
		<p style="color: white; font-family:poppins; margin: right 50%; margin-left:420px; margin-top:60px;"><img src="<?php echo base_url(); ?>assets/images/siber.png" style="width:400px; margin-left: -520px; margin-top:-90px;">
		</p>
		<p style="color: white; font-family:poppins; margin: right 50%; margin-left:350px; margin-top:-400px;">
		<h5>INTI-CSIRT Akan Membantu Konstituen Untuk Melakukan Penanggulangan Dan Pemulihan Insiden Keamanan <br>Siber Di Lingkungan PT INTI (Persero) Dengan <br>Aspek-Aspek Manajemen Insiden Keamanan Siber Berikut :
		</h5><br>
		<h4 style="color:white; font-family: poppins; margin-left:440px; margin-top:10px;"><b style="font-size: 35px;">1.</b> Insiden (Incident Triage)</h4>
		<h5 style="margin-left:470px; margin-top:10px;">a. Memastikan kebenaran insiden dan pelapor
			<br>b. Menilai dampak dan prioritas insiden<br><br>
			<h4 style="color:white; font-family: poppins; margin-left:440px; margin-top:10px;"><b style="font-size: 35px;">2.</b> Koordinasi Insiden</h4>
			<h5 style="margin-left:470px; margin-top:10px;">a. Mengkoordinasikan insiden dengan konstituen
				<br>b. Menentukan kemungkinan penyebab insiden
				<br>c. Memberikan rekomendasi penanggulangan berdasarkan panduan/SOP yang dimiliki National CSIRT kepada konstituen
				<br>d. Mengkoordinasikan insiden dengan CSIRT atau pihak lain yang terkait
			</h5>
			<h4 style="color:white; font-family: poppins; margin-left:440px; margin-top:10px;"><b style="font-size: 35px;">3.</b> Resolusi Insiden
				<h5 style="margin-left:470px; margin-top:10px;">a. Melakukan investigasi dan analisis dampak insiden
					<br>b. Memberikan rekomendasi teknis untuk pemulihan pasca insiden
					<br>c. Memberikan rekomendasi teknis untuk memperbaiki kelemahan sistem
				</h5>
	</div>
	</h4>
</section>
<footer style="background:#150544; padding:10px; text-align:center; height:100px;">
	<p style="margin-top: 28px; color:white; font-family:poppins;">Copyright &copy; 2022 INTI-CSIRT</p>
</footer>
