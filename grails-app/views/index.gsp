<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="layout-publico"/>
		<title>Celebrar +</title>

	</head>
	<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
			<a class="navbar-brand" href="#"><img src="${assetPath(src: 'logo_imagem_principal.png')}" width="200px"/></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active">
						<a class="nav-link" href="#">Início <span class="sr-only">(atual)</span></a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">Quem Somos</a>
					</li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Nossos Serviços</a>
                    </li>
					<li class="nav-item">
						<a class="nav-link" href="#">Solicite Seu Orçamento</a>
					</li>
				</ul>
				<form class="form-inline mt-2 mt-md-0">
					<input class="form-control mr-sm-2" type="text" placeholder="Procurar" aria-label="Search">
					<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Pesquisar</button>
				</form>
			</div>
		</nav>
	</header>
    <br><br><br>
	<main role="main">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<div class="container">
						<div class="carousel-caption text-left text-center">
                            <img class="first-slide" src="${assetPath(src: 'chas.png')}" alt="First slide" width="450px">
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<div class="container">
						<div class="carousel-caption">
                            <img class="second-slide" src="${assetPath(src: 'casa_nova.png')}" alt="Second slide" width="450px">
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<div class="container">
						<div class="carousel-caption">
                            <img class="third-slide" src="${assetPath(src: 'dia_dos_namorados.png')}" alt="Third slide" width="450px" >
						</div>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="sr-only">Voltar</span>
			</a>
			<a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="sr-only">Avançar</span>
			</a>
		</div>


		<!-- Mensagens de marketing e outras featurezinhas
      ================================================== -->
		<!-- Envolve o resto da página em outro container, para centralizar todo o conteúdo. -->

		<div class="container marketing">

			<!-- Três colunas de texto, abaixo do carousel -->
			<div class="row">
				<div class="col-lg-4">
					<img class="rounded-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="140" height="140">
					<h2>Título</h2>
					<p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
					<p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
				</div><!-- /.col-lg-4 -->
				<div class="col-lg-4">
					<img class="rounded-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="140" height="140">
					<h2>Título</h2>
					<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>
					<p><a class="btn btn-secondary" href="#" role="button">View details &raq uo;</a></p>
				</div><!-- /.col-lg-4 -->
				<div class="col-lg-4">
					<img class="rounded-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="140" height="140">
					<h2>Título</h2>
					<p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
					<p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
				</div><!-- /.col-lg-4 -->
			</div><!-- /.row -->


		<!-- COMEÇAM AS MENCIONADAS FEATUREZINHAS xD -->

			<hr class="featurette-divider">

			<div class="row featurette">
				<div class="col-md-7">
					<h2 class="featurette-heading">Primeiro título de featurezinhas. <span class="text-muted">Supreendente, não?!</span></h2>
					<p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
				</div>
				<div class="col-md-5">
					<img class="featurette-image img-fluid mx-auto" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
				</div>
			</div>

			<hr class="featurette-divider">

			<div class="row featurette">
				<div class="col-md-7 order-md-2">
					<h2 class="featurette-heading">Aêêê, moleque! <span class="text-muted">Tá legal ou não tá?</span></h2>
					<p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
				</div>
				<div class="col-md-5 order-md-1">
					<img class="featurette-image img-fluid mx-auto" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
				</div>
			</div>

			<hr class="featurette-divider">

			<div class="row featurette">
				<div class="col-md-7">
					<h2 class="featurette-heading">E, por último, essa aqui. <span class="text-muted">Xeque-mate!</span></h2>
					<p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
				</div>
				<div class="col-md-5">
					<img class="featurette-image img-fluid mx-auto" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
				</div>
			</div>

			<hr class="featurette-divider">

			<!-- /FIM DAS FEATUREZINHAS *-* -->

		</div><!-- /.container -->
        <footer class="container">
            <p class="float-right"><a href="#">Back to top</a></p>
            <p>&copy; 2017-2018 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
        </footer>
    </main>

	</body>
</html>
