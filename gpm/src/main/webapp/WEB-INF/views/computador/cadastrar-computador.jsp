<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html ng-app="ComputadorControllerApp">
<head>
<meta charset="utf-8" />
<title>GPM | CADASTRO DE COMPUTADOR</title>

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
		ng-controller="ComputadorController">
		<section>
			<!-- Painel -->
			<div class="panel panel-computador panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title panel-title-computador">Cadastro de
						Computador</h3>
				</div>

				<!-- Formul�rio -->
				<form name="userForm" ng-submit="submitForm(userForm.$valid)"
					class="form-horizontal" ng-controller="ComputadorController">
					<div class="panel panel-default">
						<div class="panel-body">

							<div class="form-group"
								ng-class="{ 'has-error' : userForm.modelo.$invalid && !userForm.modelo.$pristine }">
								<label for="modelo" class="col-sm-2 control-label">Modelo*</label>
								<div class="col-sm-2">
									<select class="form-control" name="modelo" id="modelo"
										ng-model="modelo" ng-init="modelo='Hp'">
										<option value="Hp" ng-selected="true">Hp</option>
										<option value="Positivo">Positivo</option>
										<option value="Lenovo">Lenovo</option>
										<option value="Elcoma">Elcoma</option>
									</select>
								</div>
							</div>


							<div class="form-group" 
								ng-class="{ 'has-error' : userForm.nome.$invalid && !userForm.nome.$pristine }">
								<label for="nome" class="col-sm-2 control-label">Nome*</label>
								<div class="col-sm-3">
									<input type="text" class="form-control" id="nome" name="nome"
										placeholder="Nome do computador" required="required"
										autofocus="autofocus" ng-model="nome" ng-minlength="3"
										ng-maxlength="30" required />
									<p ng-show="userForm.nome.$invalid && !userForm.nome.$pristine"
										class="help-block">Nome � Obrigat�rio.</p>
									<p ng-show="userForm.nome.$error.minlength" class="help-block">Nome
										m�nimo de 3 caracteres.</p>
									<p ng-show="userForm.nome.$error.maxlength" class="help-block">Nome
										m�ximo de 30 caracteres.</p>
								</div>
							</div>

							<div class="form-group"
								ng-class="{ 'has-error' : userForm.descricao.$invalid && !userForm.descricao.$pristine }">
								<label for="descricao" class="col-sm-2 control-label">Descri��o*</label>
								<div class="col-sm-3">
									<input type="text" class="form-control" id="descricao"
										name="descricao" placeholder="Descri��o do computador"
										required="required" autofocus="autofocus" ng-model="descricao"
										ng-minlength="3" ng-maxlength="30" required />
									<p
										ng-show="userForm.descricao.$invalid && !userForm.descricao.$pristine"
										class="help-block"></p>
									<p
										ng-show="userForm.descricao.$invalid && !userForm.descricao.$pristine"
										class="help-block">Descri��o � Obrigat�rio.</p>
									<p ng-show="userForm.descricao.$error.minlength"
										class="help-block">Descri��o m�nimo de 3 caracteres.</p>
									<p ng-show="userForm.descricao.$error.maxlength"
										class="help-block">Descri��o m�ximo de 30 caracteres.</p>
								</div>
							</div>


							<div class="form-group"
								ng-class="{ 'has-error' : userForm.gap_tomb.$invalid && !userForm.gap_tomb.$pristine }">
								<label for="gap_tomb" class="col-sm-2 control-label">Tombamento*</label>
								<div class="col-sm-2">
									<input type="text" class="form-control" id="gap_tomb"
										name="gap_tomb" placeholder="(Patrim�nio)" ng-minlength="3"
										ng-maxlength="30" required autofocus="autofocus"
										ng-model="gap_tomb" />
									<p
										ng-show="userForm.gap_tomb.$invalid && !userForm.gap_tomb.$pristine"
										class="help-block"></p>
									<p
										ng-show="userForm.gap_tomb.$invalid && !userForm.gap_tomb.$pristine"
										class="help-block">Tombamento � Obrigat�rio.</p>
									<p ng-show="userForm.gap_tomb.$error.minlength"
										class="help-block">Descri��o m�nimo de 3 caracteres.</p>
									<p ng-show="userForm.gap_tomb.$error.maxlength"
										class="help-block">Descri��o m�ximo de 20 caracteres.</p>
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
								ng-class="{ 'has-error' : userForm.ip.$invalid && !userForm.ip.$pristine }">
								<label for="ramal" class="col-sm-2 control-label">IP*</label>
								<div class="col-sm-2">
									<input type="text" class="form-control" id="ip" name="ip"
										placeholder="Ex: 192.168.102.14" required ng-minlength="3"
										ng-maxlength="20" autofocus="autofocus" ng-model="ip" />
									<p ng-show="userForm.ip.$invalid && !userForm.ip.$pristine"
										class="help-block"></p>
									<p ng-show="userForm.ip.$invalid && !userForm.ip.$pristine"
										class="help-block">Setor � Obrigat�rio.</p>
									<p ng-show="userForm.ip.$error.minlength" class="help-block">Ip
										m�nimo de 12 caracteres.</p>
									<p ng-show="userForm.ip.$error.maxlength" class="help-block">Ip
										m�ximo de 20 caracteres.</p>
								</div>
							</div>

							<div class="form-group"
								ng-class="{ 'has-error' : userForm.tipo.$invalid && !userForm.tipo.$pristine }">
								<label for="tipo" class="col-sm-2 control-label">Tipo*</label>
								<div class="col-sm-1">
									<select class="form-control" name="tipo" id="tipo"
										ng-model="tipo" ng-init="tipo='1'">
										<option value="1" ng-selected="true">1</option>
										<option value="2">2</option>

									</select>
								</div>
							</div>

							<div class="form-group"
								ng-class="{ 'has-error' : userForm.ramal.$invalid && !userForm.ramal.$pristine }">
								<label for="ramal" class="col-sm-2 control-label">Ramal*</label>
								<div class="col-sm-2">
									<input type="text" class="form-control" id="ramal" name="ramal"
										placeholder="Ramal" required ng-minlength="4"
										ng-maxlength="10" autofocus="autofocus" ng-model="ramal" />
									<p
										ng-show="userForm.ramal.$invalid && !userForm.ramal.$pristine"
										class="help-block"></p>
									<p
										ng-show="userForm.ramal.$invalid && !userForm.ramal.$pristine"
										class="help-block">Ramal � Obrigat�rio. S� Pode Conter
										N�meros</p>
									<p ng-show="userForm.ramal.$error.minlength" class="help-block">Ramal
										m�nimo de 4 caracteres.</p>
									<p ng-show="userForm.ramal.$error.maxlength" class="help-block">Ramal
										m�ximo de 10 caracteres.</p>

									<div class="form-group" align="center">
										<div class="col-sm-5">
											<button type="button" class="btn btn-primary"
												ng-disabled="userForm.$invalid"
												ng-click="submitForm(userForm.$valid)">Cadastrar</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</section>
	</div>
	<!-- /#main -->

	<!-- AngularJS e JS -->
	<script src="<c:url value='../resources/js/angular.min.js' />"></script>
	<script
		src="<c:url value='../resources/controller/ComputadorController.js' />"></script>
	<script src="<c:url value='../resources/js/jquery-3.2.1.min.js' />"></script>
	<script src="<c:url value='../resources/js/bootstrap.min.js' />"></script>

</body>
</html>
