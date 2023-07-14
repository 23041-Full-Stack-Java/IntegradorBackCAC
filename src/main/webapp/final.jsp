<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Conferencia Buenos Aires</title>

<!-- <Etiquetas meta utiles para mejor posicionamiento de buscador -->
<meta name="author"
	content="Alejandra R. de Cajal - Comisión 23041 - Prof. Facundo Coronel" />
<meta name="description" content="TPI de Front-End" />
<meta name="keywords"
	content="codoacodo, frontend, html, css, bootstrap" />

<!-- Bootstrap 5.3.0 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
	crossorigin="anonymous"></script>

<!-- Hoja de estilos -->
<link rel="stylesheet" href="style.css" />
</head>
<body>

	<!-- Header -->
	<header class="header">
		<!-- Barra de navegación -->
		<div class="navegacion">
			<nav class="navbar navbar-expand-lg bg-dark navbar-dark sticky-top">
				<div class="container-fluid">
					<a class="navbar-brand" href="index.html"> <img
						src="images/codoacodo.png" width="100px" alt="Codo a Codo" />
						Conf Bs As
					</a>
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarNav"
						aria-controls="navbarNav" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-end"
						id="navbarNav">
						<ul class="navbar-nav">
							<li class="nav-item"><a class="nav-link active"
								aria-current="page" href="#">La conferencia</a></li>
							<li class="nav-item"><a class="nav-link" href="#oradores">Los
									oradores</a></li>
							<li class="nav-item"><a class="nav-link" href="#lugar">El
									lugar y la fecha</a></li>
							<li class="nav-item"><a class="nav-link" href="#formulario">Conviértete
									en orador</a></li>
							<li class="nav-item"><a class="nav-link text-success"
								href="comprar.html">Comprar tickets</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</header>


	<main>

		<div class="card text-center w-50 m-auto mt-5">
			<div class="card-header">Confirmación</div>
			<div class="card-body">
				<h5 class="card-title">¡Modificación realizada!</h5>
				<p class="card-text">Hemos procesado tu solicitud.</p>
				<a href="comprar.html" class="btn btn-success">Listo</a>
			</div>
			<div class="card-footer text-body-secondary">Conferencia Bs.
				As.</div>
		</div>

	</main>

	<!-- Footer -->
	<footer class="footer">
		<ul
			class="nav justify-content-center small text-center text-wrap fs-6 text fw-light">
			<li class="nav-item"><a class="nav-link text-reset"
				aria-current="page" href="#">Preguntas frecuentes</a></li>
			<li class="nav-item"><a class="nav-link text-reset" href="#">Contáctanos</a>
			</li>
			<li class="nav-item"><a class="nav-link text-reset" href="#">Prensa</a>
			</li>
			<li class="nav-item"><a class="nav-link text-reset" href="#">Conferencias</a>
			</li>
			<li class="nav-item"><a class="nav-link text-reset" href="#">Términos
					y condiciones</a></li>
			<li class="nav-item"><a class="nav-link text-reset" href="#">Privacidad</a>
			</li>
			<li class="nav-item"><a class="nav-link text-reset" href="#">Estudiantes</a>
			</li>
		</ul>
	</footer>


</body>
</html>