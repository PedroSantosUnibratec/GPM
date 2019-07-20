<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html ng-app="ImpressoraControllerApp">
<head>
<meta charset="utf-8" />
<title>GPM | CADASTRO DE IMPRESSORA</title>

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
		ng-controller="ImpressoraController">
	<section>
		<!-- Painel -->
		<div class="panel panel-computador panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title panel-title-computador">Cadastro de
					Impressora</h3>
			</div>

			<!-- Formul�rio -->
			<form name="userForm" ng-submit="submitForm(userForm.$valid)"
				class="form-horizontal" ng-controller="ImpressoraController">
				<div class="panel panel-default">
					<div class="panel-body">

						<div class="form-group"
							ng-class="{ 'has-error' : userForm.modelo.$invalid && !userForm.modelo.$pristine }">
							<label for="modelo" class="col-sm-2 control-label">Modelo*</label>
							<div class="col-sm-3">
								<select class="form-control" name="modelo" id="modelo"
									ng-model="modelo" ng-init="modelo='Brother'">
									<option value="Brother" ng-selected="true">Brother</option>
									<option value="Lexmark">Lexmark</option>
									<option value="HP">HP</option>
									<option value="Kyocera">Kyocera</option>
								</select>
							</div>
						</div>
						
							<div class="form-group"
								ng-class="{ 'has-error' : userForm.modelo.$invalid && !userForm.modelo.$pristine }">
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
									name="descricao" placeholder="Descri��o da impressora"
									required="required" autofocus="autofocus" ng-model="descricao"
									required />
								<p
									ng-show="userForm.descricao.$invalid && !userForm.descricao.$pristine"
									class="help-block"></p>
							</div>
						</div>


						<div class="form-group"
							ng-class="{ 'has-error' : userForm.ramal.$invalid && !userForm.ramal.$pristine }">
							<label for="ramal" class="col-sm-2 control-label">Ramal*</label>
							<div class="col-sm-3">
								<input type="text" class="form-control" id="ramal" name="ramal"
									placeholder="Ramal" required autofocus="autofocus"
									ng-model="ramal" />
								<p
									ng-show="userForm.ramal.$invalid && !userForm.ramal.$pristine"
									class="help-block"></p>
							</div>
						</div>

						

						<div class="form-group"
							ng-class="{ 'has-error' : userForm.ip.$invalid && !userForm.ip.$pristine }">
							<label for="ramal" class="col-sm-2 control-label">IP*</label>
							<div class="col-sm-3">
								<input type="text" class="form-control" id="ip" name="ip"
									placeholder="Ex: 192.168.102.14" required autofocus="autofocus"
									ng-model="ip" />
								<p ng-show="userForm.ip.$invalid && !userForm.ip.$pristine"
									class="help-block"></p>
							</div>
						</div>

						<div class="form-group"
							ng-class="{ 'has-error' : userForm.num_serie.$invalid && !userForm.num_serie.$pristine }">
							<label for="setor" class="col-sm-2 control-label">N�mero
								de S�rie*</label>
							<div class="col-sm-3">
								<input type="text" class="form-control" id="num_serie"
									name="num_serie" placeholder="Ex:8511622515165" required
									autofocus="autofocus" ng-model="num_serie" />
								<p
									ng-show="userForm.num_serie.$invalid && !userForm.num_serie.$pristine"
									class="help-block"></p>
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
		src="<c:url value='../resources/controller/ImpressoraController.js' />"></script>
	<script src="<c:url value='../resources/js/jquery-3.2.1.min.js' />"></script>
	<script src="<c:url value='../resources/js/bootstrap.min.js' />"></script>

</body>
</html>
