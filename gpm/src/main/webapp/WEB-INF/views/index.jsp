<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="utf-8" />
	<title>GPM | LOGIN</title>
	
	<!-- CSS -->
	<link href="<c:url value='/resources/css/bootstrap.min.css' />" rel="stylesheet"></link>
	<link href="<c:url value='/resources/css/style.css' />" rel="stylesheet"></link>
	
	</head>
	<body>
		<header>	
			<!-- Topo da P�gina e MENU -->
			<nav class="navbar navbar-inverse navbar-fixed-top">
		  		<div class="container-fluid">
				   	<div class="navbar-header">
				    	<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						     <span class="sr-only">Toggle navigation</span>
						     <span class="icon-bar"></span>
						     <span class="icon-bar"></span>
						     <span class="icon-bar"></span>
				    	</button>
				    	<a class="navbar-brand" href="#">Gerenciador Parque M�quinas</a>
				   	</div>
				   	<div id="navbar" class="navbar-collapse collapse">
					    <ul class="nav navbar-nav navbar-right">
						     <li><a href="painel">In�cio</a></li>
						     <li><a href="usuario/listar">Usu�rio</a></li>
						     <li><a href="computador/listar">Computador</a></li>
						     <li><a href="monitor/listar">Monitor</a></li>
						     <li><a href="impressora/listar">Impressora</a></li>
			    		</ul>
				   	</div>
		  		</div>
	 		</nav>
			
		</header>	

		<section>
			
			<div class="panel panel-login panel-primary">
				<div class="panel-heading">
					<h3 class="basic-url panel-title-login">Login</h3>
				</div>
				<form class="form-signin" method="post">
					<div class="input-group">
						<span class="input-group-addon" id="email"> Email </span> <input
							type="email" id="inputEmail" name="login" class="form-control"
							placeholder="Email" required="required" autofocus="autofocus" />
					</div>
					<br></br>
					<div class="input-group">
						<span class="input-group-addon" id="nomeSenha">Senha</span> <input
							type="password" id="senha" name="senha" class="form-control"
							placeholder="Senha" required="required" autofocus="autofocus" />
					</div>
					<div class="checkbox checkConectado">
						<label> <input type="checkbox" value="remember-me" /><span>Continuar
								Conectado</span>
						</label>
					</div>
					<button type="submit" class="btn btn-lg btn-primary btn-block">Entrar</button>
				</form>
			</div>
			
			<div class="navbar navbar-default navbar-static-top">
				<div class="container-fluid">
					<div class="navbar-header">
						<div class="container">
							<div class="row">
								<div class="col-md-4">
									<h2>Produto</h2>
									<p>Criado pela empresa TECDAINFOR, <br></br>
									   o GPM � uma solu��o capaz de gerenciar <br></br>
									   todos os computadores da sua empresa. <br></br>
									   Venha conhecer nossas solu��es ...</p>
								</div>
								<div class="col-md-4">
									<h2>Help</h2>
									<p>D�vidas com o GPM?  <br></br> 
									   Acesse o link e tire suas d�vidas ... <br></br>
									   Manuel do aplicativo ...</p>
								</div>
								<div class="col-md-4">
									<h2>Contato</h2>
									<p>
										Email: junioribeiro-2009@hotmail.com <br></br> Fone: (081)
										99542-6355 <br></br> T�cnico Respons�bel: Misael J�nior e Leomir Oliveira<br></br>
										Empresa: TecDaInfor
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
		</section>		
		
		<!-- AngularJS e JS -->
		<script src="<c:url value='/resources/js/angular.min.js' />"></script>
		<script src="<c:url value='/resources/controller/UsuarioController.js' />"></script>
		<script src="<c:url value='/resources/js/jquery-3.2.1.min.js' />"></script>
		<script src="<c:url value='/resources/js/bootstrap.min.js' />"></script>
			 
	</body>
</html>
