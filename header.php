<!DOCTYPE html>
<html>
<head>
<title>Movies Pro an Entertainment Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- pop-up -->
<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
<!-- //pop-up -->
<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
<link rel="stylesheet" type="text/css" href="css/zoomslider.css" />
<link rel="stylesheet" type="text/css" href="css/table-style.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" href="css/list.css" type="text/css" media="all" />
<link href="css/font-awesome.css" rel="stylesheet">
<script type="text/javascript" src="js/modernizr-2.6.2.min.js"></script>
<!-- <script type="text/javascript" src="js/jquery.basictable.min.js"></script> -->
<!--//web-fonts-->
</head>
<body>
	<!-- Header -->
	<header id="navigation" class="navbar-fixed-top navbar" style="height: 25px;">
		<div class="container">
			<!-- Menu left-->
			<div class="navbar-header">
				<!-- Responsive button -->
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span  class="sr-only">Menu</span>
					<i class="fa fa-bars fa-2x"></i>
				</button>
				<!-- End responsive button -->

				<!-- LOGO -->
				<a href="#body" class="navbar-brand">
					<h1 id="logo">Ngoc233</h1>
				</a>
				<!-- End Logo -->
			</div>
			<!-- End menu left-->
			<div>
				<!-- Main menu-->
				<nav class="collapse navbar-collapse navbar-right" role="navigation">
					<ul id="nav" class="nav navbar-nav">
						<li class="current"><a href="index.php">TRANG CHỦ</a></li>
						<li class="menu" ><a href="#">THỂ LOẠI</a>
							<ul  class="chirldmenu" style="display: none">
								<li><a href="#">Truyện Nam</a></li>
								<li><a href="#">Truyện Nữ</a></li>
								<li><a href="#">Truyện Ma</a></li>
							</ul>
						</li>
						<li><a href="#">TRUYỆN ĐỌC</a></li>
						<li><a href="#">TRUYỆN TRANH</a></li>
						<li><a href="list.php">DANH SÁCH</a></li>
					</ul>
				</nav>

				<script type="text/javascript">
					$(document).ready(function(){
						$('.menu').hover(function(){
							$('.chirldmenu').slideToggle();
						});
					});
				</script>
				<!-- End main menu-->
			</div>
		</div>
	</header>
	<!-- End Header -->