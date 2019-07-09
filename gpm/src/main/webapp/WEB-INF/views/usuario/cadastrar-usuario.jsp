<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html ng-app="UsuarioControllerApp" >
	<head>
	<meta charset="utf-8" />
	<title>GPM | CADASTRO DE USU�RIO</title>
	
	<!-- CSS -->
	<link href="<c:url value='../resources/css/bootstrap.min.css' />" rel="stylesheet"></link>
	<link href="<c:url value='../resources/css/style.css' />" rel="stylesheet"></link>
	
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
						     <li><a href="../painel">In�cio</a></li>
						     <li><a href="../usuario/listar">Usu�rio</a></li>
						     <li><a href="../computador/listar">Computador</a></li>
						     <li><a href="../monitor/listar">Monitor</a></li>
						     <li><a href="../impressora/listar">Impressora</a></li>
			    		</ul>
				   	</div>
		  		</div>
	 		</nav>
			
		</header>	

		<section>
			<!-- Painel -->
			<div class="panel panel-computador panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title panel-title-computador">Cadastro de
						Usu�rio</h3>
				</div>
				
				<!-- Formul�rio -->
				<form name="userForm" ng-submit="submitForm(userForm.$valid)" novalidate class="form-horizontal" ng-controller="UsuarioController" >
					<div class="panel panel-default">
						<div class="panel-body">
						
							<div class="form-group" ng-class="{ 'has-error' : userForm.nome.$invalid && !userForm.nome.$pristine }" >
								<label for="nome" class="col-sm-2 control-label">Nome
									Completo*</label>
								<div class="col-sm-3">
									<input type="text" class="form-control" id="nome" name="nome"
										placeholder="Nome Completo do Usu�rio" 
										autofocus="autofocus" ng-model="nome" ng-minlength="3" ng-maxlength="30" required />
										<p ng-show="userForm.nome.$invalid && !userForm.nome.$pristine" class="help-block">Nome � Obrigat�rio.</p>
										<p ng-show="userForm.nome.$error.minlength" class="help-block">Nome m�nimo de 3 caracteres.</p>
                						<p ng-show="userForm.nome.$error.maxlength" class="help-block">Nome m�ximo de 30 caracteres.</p>
										
										
								</div>
								</div>
								
								<div class="form-group" ng-class="{ 'has-error' : userForm.email.$invalid && !userForm.email.$pristine }">
								<label for="setor" class="col-sm-2 control-label">Email*</label>
								<div class="col-sm-3">
									<input type="email" class="form-control" id="email" name="email"
										placeholder="Email do Usu�rio" required="required" 
										autofocus="autofocus" ng-model="email"/>
										<p ng-show="userForm.email.$invalid && !userForm.email.$pristine" class="help-block">Informe um E-mail V�lido.</p>
								</div>
							</div>

							<div class="form-group" ng-class="{ 'has-error' : userForm.senha.$invalid && !userForm.senha.$pristine }" >
								<label for="ip" class="col-sm-2 control-label">Senha*</label>
								<div class="col-sm-2">
									<input type="password" class="form-control" id="senha"
										name="senha" placeholder="Senha do Usu�rio" required 
										autofocus="autofocus" ng-model="senha" ng-minlength="6" ng-maxlength="30"/>
										<p ng-show="userForm.senha.$invalid && !userForm.senha.$pristine" class="help-block">Senha � Obrigat�rio.</p>
										<p ng-show="userForm.senha.$error.minlength" class="help-block">Senha minima de 6 caracteres.</p>
                						<p ng-show="userForm.senha.$error.maxlength" class="help-block">Senha m�ximo de 30 caracteres.</p>
										
								</div>
								</div>
								
								<div class="form-group" ng-class="{ 'has-error' : userForm.rsenha.$invalid && !userForm.rsenha.$pristine }">
								<label for="ip" class="col-sm-2 control-label">Repetir
									Senha*</label>
									<div class="col-sm-2">
									<input type="password" class="form-control" id="rsenha"
										name="rsenha" placeholder="Senha do Usu�rio" 
										required autofocus="autofocus" ng-model="rsenha" ng-minlength="6" ng-maxlength="30"/>
										<p ng-show="userForm.rsenha.$invalid && !userForm.rsenha.$pristine" class="help-block">Repetir Senha � Obrigat�rio.</p>
										<p ng-show="userForm.rsenha.$error.minlength" class="help-block">Repeti��o de Senha no m�nimo 6 caracteres.</p>
                						<p ng-show="userForm.rsenha.$error.maxlength" class="help-block">Repeti��o de Senha no m�ximo 30 caracteres.</p>
										
									</div>
							</div>


							<div class="form-group" ng-class="{ 'has-error' : userForm.telefone.$invalid && !userForm.telefone.$pristine }" >
								<label for="ramal" class="col-sm-2 control-label">Telefone</label>
								<div class="col-sm-2">
									<input type="telefone" class="form-control" id="telefone"
										name="telefone" placeholder="Telefone do Usu�rio" 
										required autofocus="autofocus" ng-model="telefone" ng-minlength="9" ng-maxlength="20" ui-mask="(99)9?9999-9999"/>
										<p ng-show="userForm.telefone.$invalid && !userForm.telefone.$pristine" class="help-block">Telefone � Obrigat�rio.</p>
										<p ng-show="userForm.telefone.$error.minlength" class="help-block">N�mero telef�nico no m�nimo 9 caracteres.</p>
                						<p ng-show="userForm.telefone.$error.maxlength" class="help-block">N�mero telef�nico no m�ximo 20 caracteres.</p>
										
								</div>
								</div>
								
								<div class="form-group">
								<label for="status" class="col-sm-2 control-label">Perfil*</label>
								<div class="col-sm-2">
									<select class="form-control" name="perfil" id="perfil" ng-model="perfil" ng-init="perfil='Padr�o'">
										<option valeu="Padr�o" ng-selected="true">Padr�o</option>
										<option valeu="Admin">Admin</option>
									</select>										
				
							<div class="form-group" align="center">
								<div class="col-sm-5">
									<button type="button" class="btn btn-primary" ng-disabled="userForm.$invalid" ng-click="submitForm(userForm.$valid)" >Cadastrar</button>
								</div>
							</div>
							</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</section>		
		
		<!-- AngularJS e JS -->
		<script src="<c:url value='../resources/js/angular.min.js' />"></script>
		<script src="<c:url value='../resources/controller/UsuarioController.js' />"></script>
		<script src="<c:url value='../resources/js/jquery-3.2.1.min.js' />"></script>
		<script src="<c:url value='../resources/js/bootstrap.min.js' />"></script>
			 
	</body>
</html>
