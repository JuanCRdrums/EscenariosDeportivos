<?php
	session_start();
	if(!isset($_SESSION["usuario"]))
	{
		header("location: administrar.php");
	}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>DeportApp</title>
	<meta charset="UTF-8">
	<meta name="description" content="DeportApp - Escenarios Deportivos">
	<meta name="keywords" content="DeportApp, Escenarios Deportivos, Futbol, Voleibol, UTP">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Favicon -->   
	<link href="img/favi.png" rel="shortcut icon"/>

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/animate.css"/>
	<link rel="stylesheet" href="css/owl.carousel.css"/>
	<link rel="stylesheet" href="css/style.css"/>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
  <script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
  <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<body>
	<div id="preloder">
		<div class="loader"></div>
	</div>
	
	
	<!-- Header section start -->   
	<header class="header-area">
		<div class="nav-switch">
			<i class="fa fa-bars"></i>
		</div>
		<div class="phone-number">DeportApp</div>
		<nav class="nav-menu">
			<ul>
				<li ><a href="index.php">Inicio</a></li>
				<li><a href="mapa.php"> Mapa </a></li>
				<li ><a href="consultar.php"> Buscar Escenarios Deportivos</a></li>
				<li class="active"><a href="administrar.php">Administrar Escenarios</a></li>
			</ul>
		</nav>
	</header>
	<!-- Header section end -->   


	<!-- Page header section start -->
	<section class="page-header-section set-bg" data-setbg="img/header.jpg">
		<div class="container">
			<h1 class="header-title">Registrar Escenarios<span>.</span></h1>
		</div>
	</section>
	<!-- Page header section end -->



	<!-- Intro section start -->
	<section class="intro-section spad">
		<div class="container">
            <form class="form-horizontal" role = "form" method = "post" action="">

                <div class="row">
                    <div class="col-xs-6" align="center">
                        <label for = "predio"><h4> Predio al que pertenece:</h4></label> 
                    </div>
                    <div class="col-xs-6">
                        <br/>
                        <select class="form-control" id="predios">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                        </select>
                    </div>
                    
                </div>
                <br>
                <div class = "row">
                    <div class="col-xs-6" align="center"> 
                        <label for = "Deporte" ><h4>Deporte:</h4></label>   
                    </div>
                    <div class="col-xs-6" >
                        <br/>
                        <input class="form-control" type="text" id="Deporte" placeholder="Deporte" name="Deporte">
                    </div>
					
				</div>
                <br>
                <div class = "row">
                    <div class="col-xs-6" align="center"> 
                        <label for = "Dimensiones" ><h4>Dimensiones:</h4></label>   
                    </div>
                    <div class="col-xs-3" >
                        <br/>
                        <input class="form-control" type="text" id="Ancho" placeholder="Ancho" name="Ancho">
                    </div>
                    <div class="col-xs-3" >
                        <br/>
                        <input class="form-control" type="text" id="Alto" placeholder="Alto" name="Alto">
                    </div>
                    
                </div>
                <br>
                <div class = "row">
                    <div class="col-xs-6" align="center"> 
                        <label for = "CaracteristicasVarias" ><h4>Características varias:</h4></label>   
                    </div>
                    <div class="col-xs-6" >
                        <br/>
                        <textarea class="form-control" id="CaracteristicasVarias" name="CaracteristicasVarias" rows="3"></textarea>
                    </div>
					
				</div>
                <br>
                <div class = "row">

                    <div class="col-xs-11" align="center">
						<input type="submit"  class="btn btn-success" id="submit" name="submit" value="Registrar">
					</div>
                </div>
            </form>
            
            
		</div>
	</section>
	<!-- Intro section end -->






	<!-- Footer section start -->
	
	<footer class="footer-section">
	
		<div class="footer-social">
		<br/><br/><br/><br/>
			<div class="social-links">
				<a href="https://co.pinterest.com"><i class="fa fa-pinterest"></i></a>
				<a href="https://co.linkedin.com"><i class="fa fa-linkedin"></i></a>
				<a href="https://www.instagram.com"><i class="fa fa-instagram"></i></a>
				<a href="https://www.facebook.com"><i class="fa fa-facebook"></i></a>
				<a href="https://twitter.com"><i class="fa fa-twitter"></i></a>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-lg-9 offset-lg-3">
					<div class="row">
						<div class="col-md-4">
							<div class="footer-item">
								<ul>
									<li><a href="index.php">Inicio</a></li>
									<li><a href="mapa.php">Mapa</a></li>
									<li><a href="consultar.php">Buscar Escenarios Deportivos</a></li>
									<li><a href="administrar.php">Administrar Escenarios</a></li>
								</ul>
							</div>
						</div>
						<div class="col-md-4">
							<div class="footer-item">
								<ul>
									<li><a href="#">Terminos y Condiciones</a></li>
									<li><a href="#">Contactanos</a></li>
									<li><a href="#">Soporte</a></li>
								</ul>
							</div>
						</div>
						<div class="col-md-4">
							<div class="footer-item">
								<ul>
									<li><a href="#">Héctor Mesa</a></li>
									<li><a href="#">Felipe Bravo</a></li>
									<li><a href="#">Camilo Rojas</a></li>
									<li><a href="#">Sebastian Sanchez</a></li>
									<li><a href="#">UTP</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
     <div class="copyright">Copyright &copy; <script>document.write(new Date().getFullYear());</script> All rights reserved. </div>
    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

	</footer>
	<!-- Footer section end -->



	<!--====== Javascripts & Jquery ======-->
	<script src="js/jquery-2.1.4.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/isotope.pkgd.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.owl-filter.js"></script>
	<script src="js/magnific-popup.min.js"></script>
	<script src="js/circle-progress.min.js"></script>
	<script src="js/main.js"></script>
</body>
</html>