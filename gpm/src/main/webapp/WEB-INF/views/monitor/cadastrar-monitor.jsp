<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html ng-app="MonitorControllerApp">
<head>
<meta charset="utf-8" />
<title>GPM | CADASTRO DE MONITOR</title>

<!-- CSS -->
<link href="<c:url value='../resources/css/bootstrap.min.css' />"
	rel="stylesheet"></link>
<link href="<c:url value='../resources/css/style.css' />"
	rel="stylesheet"></link>

</head>
<body>
	<header>
		<!-- Topo da P�gina e MENU -->
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Gerenciador Parque M�quinas</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
					  <li><a href="/gpm/painel">In�cio</a></li>
						  <li><a href="/gpm/usuario/listar">Usu�rio</a></li>
						  <li><a href="/gpm/computador/listar">Computador</a></li>
						  <li><a href="/gpm/monitor/listar">Monitor</a></li>
						  <li><a href="/gpm/impressora/listar">Impressora</a></li>
						    <li><a href="/gpm/setor/listar">Setor</a></li>
					</ul>
				</div>
			</div>
		</nav>

	</header>
<div id="main" class="container-fluid" style="margin-top: 50px" data-ng-init="listaSetor()"
		ng-controller="MonitorController">
	<section>
		<!-- Painel -->
		<div class="panel panel-computador panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title panel-title-computador">Cadastro de
					Monitor</h3>
			</div>

			<!-- Formul�rio -->
			<form name="userForm" ng-submit="submitForm(userForm.$valid)"
				class="form-horizontal" ng-controller="MonitorController">
				<div class="panel panel-default">
					<div class="panel-body">

						<div class="form-group">
							<label for="modelo" class="col-sm-2 control-label">Modelo*</label>
							<div class="col-sm-3">
								<select class="form-control" name="modelo" id="modelo"
									ng-model="modelo" ng-init="modelo='HP'">
									<option valeu="HP" ng-selected="true">HP</option>
									<option valeu="LG">LG</option>
									<option valeu="Lenovo">Lenovo</option>
									<option valeu="AOC">AOC</option>
									<option valeu="Sansung">Sansung</option>
								</select>
							</div>
						</div>


						<div class="form-group"
							ng-class="{ 'has-error' : userForm.montomb.$invalid && !userForm.montomb.$pristine }">
							<label for="montomb" class="col-sm-2 control-label">Tombamento*</label>
							<div class="col-sm-3">
								<input type="text" class="form-control" id="montomb"
									name="montomb" placeholder="Tombamento(Patrim�nio)" required
									autofocus="autofocus" ng-model="montomb" />
								<p
									ng-show="userForm.montomb.$invalid && !userForm.montomb.$pristine"
									class="help-block">Informe o n�mero do tombamento.</p>
							</div>
						</div>


						<div class="form-group"
								ng-class="{ 'has-error' : userForm.setor.$invalid && !userForm.setor.$pristine }">
								<label for="setor" class="col-sm-2 control-label">Setor*</label>
								<div class="col-sm-2">
										<select ng-model="setor" name="setor" id="setor" class="form-control"
										ng-options="setor.nome for setor in setores"></select>
									
									
							</div>
							</div>

						<div class="form-group"
							ng-class="{ 'has-error' : userForm.descricao.$invalid && !userForm.descricao.$pristine }">
							<label for="descricao" class="col-sm-2 control-label">Descri��o*</label>
							<div class="col-sm-3">
								<input type="text" class="form-control" id="descricao"
									name="descricao" placeholder="Escreva uma descri��o" required
									autofocus="autofocus" ng-model="descricao" />
								<p
									ng-show="userForm.descricao.$invalid && !userForm.descricao.$pristine"
									class="help-block">Informe uma descri��o</p>
							</div>
						</div>

						<div class="form-group" align="center">
							<div class="col-sm-5">
								<button type="button" class="btn btn-primary"
									ng-disabled="userForm.$invalid"
									ng-click="submitForm(userForm.$valid)">Cadastrar</button>
							</div>
						</div>

					</div>
				</div>
			</form>
		</div>
	</section>
</div>
	<!-- AngularJS e JS -->
	<script src="<c:url value='../resources/js/angular.min.js' />"></script>
	<script
		src="<c:url value='../resources/controller/MonitorController.js' />"></script>
	<script src="<c:url value='../resources/js/jquery-3.2.1.min.js' />"></script>
	<script src="<c:url value='../resources/js/bootstrap.min.js' />"></script>

</body>
</html>
