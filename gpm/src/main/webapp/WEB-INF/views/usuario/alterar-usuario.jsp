<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html ng-app="UsuarioControllerApp" >
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<title>GPM | EDITAR CADASTRO DE USU�RIO</title>
		
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
						     <li><a href="/gpm/painel">In�cio</a></li>
						     <li><a href="../listar">Usu�rio</a></li>
						     <li><a href="/gpm/computador/listar">Computador</a></li>
						     <li><a href="/gpm/monitor/listar">Monitor</a></li>
						     <li><a href="/gpm/impressora/listar">Impressora</a></li>
						       <li><a href="/gpm/setor/listar">Setor</a></li>
			    		</ul>
				   	</div>
		  		</div>
	 		</nav>
			
		</header>	

		<section>
			<!-- Painel -->
			<div class="panel panel-computador panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title panel-title-computador">Editar Cadastro de
						Usu�rio</h3>
				</div>
				
				<!-- Formul�rio -->
				<form name="userForm" ng-submit="submitForm(userForm.$valid)" class="form-horizontal" ng-controller="UsuarioController">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="form-group" >
								<label for="nome" class="col-sm-2 control-label">Codigo
								*</label>
								<div class="col-sm-1">
									<input type="text" class="form-control" id="id" name="id"
										placeholder="C�digo do Usu�rio" required="required"
										autofocus="autofocus" ng-model="id" readonly="readonly"  ng-init="id='${usuario.id}'"/>
								</div>
							</div>
							<div class="form-group" ng-class="{ 'has-error' : userForm.nome.$invalid && !userForm.nome.$pristine }">
								<label for="nome" class="col-sm-2 control-label">Nome
									Completo*</label>
								<div class="col-sm-3">
									<input type="text" class="form-control" id="nome" name="nome"
										placeholder="Nome Completo do Usu�rio" required="required" ng-minlength="3" ng-maxlength="30"
										autofocus="autofocus" ng-model="nome" ng-init="nome='${usuario.nome}'"/>
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
										autofocus="autofocus" ng-model="email" ng-init="email='${usuario.email}'"/>
										<p ng-show="userForm.email.$invalid && !userForm.email.$pristine" class="help-block">Informe um E-mail V�lido.</p>
								</div>
							</div>
							<span class='msg-erro msg-nome'></span>
							
							<span class='msg-erro msg-email'></span>
							<div class="form-group" ng-class="{ 'has-error' : userForm.senha.$invalid && !userForm.senha.$pristine }">
								<label for="ip" class="col-sm-2 control-label">Senha*</label>
								<div class="col-sm-2">
									<input type="password" class="form-control" id="senha" 
										name="senha" placeholder="Senha do Usu�rio" required="required" ng-minlength="6" ng-maxlength="30"
										autofocus="autofocus" ng-model="senha" ng-init="senha='${usuario.senha}'"/>
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
										name="rsenha" placeholder="Senha do Usu�rio" ng-minlength="6" ng-maxlength="30"
										required="required" autofocus="autofocus" ng-model="rsenha" ng-init="rsenha='${usuario.senha}'"/>
										<p ng-show="userForm.rsenha.$invalid && !userForm.rsenha.$pristine" class="help-block">Repetir Senha � Obrigat�rio.</p>
										<p ng-show="userForm.rsenha.$error.minlength" class="help-block">Repeti��o de Senha no m�nimo 6 caracteres.</p>
                						<p ng-show="userForm.rsenha.$error.maxlength" class="help-block">Repeti��o de Senha no m�ximo 30 caracteres.</p>
									</div>
							</div>
							<span class='msg-erro msg-senha'></span>
							
							<span class='msg-erro msg-rsenha'></span>
							<div class="form-group" ng-class="{ 'has-error' : userForm.telefone.$invalid && !userForm.telefone.$pristine }">
								<label for="ramal" class="col-sm-2 control-label">Telefone</label>
								<div class="col-sm-2">
									<input type="telefone" class="form-control" id="telefone"
										name="telefone" placeholder="Telefone do Usu�rio"  ng-minlength="9" ng-maxlength="20"
										required="required" autofocus="autofocus" ng-model="telefone" ng-init="telefone='${usuario.telefone}'"/>
										<p ng-show="userForm.telefone.$invalid && !userForm.telefone.$pristine" class="help-block">Telefone � Obrigat�rio.</p>
										<p ng-show="userForm.telefone.$error.minlength" class="help-block">N�mero telef�nico no m�nimo 9 caracteres.</p>
                						<p ng-show="userForm.telefone.$error.maxlength" class="help-block">N�mero telef�nico no m�ximo 20 caracteres.</p>
										
								</div>
								</div>
								
								<div class="form-group">
								<label for="status" class="col-sm-2 control-label">Perfil*</label>
								<div class="col-sm-2">
									<select class="form-control" name="perfil" id="perfil"  ng-model="perfil" ng-init="perfil='${usuario.perfil}'">
										<option valeu="padrao">Padr�o</option>
										<option valeu="admin">Admin</option>
									</select>
								</div>
							</div>
							<span class='msg-erro msg-telefone'></span>
							
							<span class='msg-erro msg-perfil'></span>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<button type="button" class="btn btn-primary" ng-disabled="userForm.$invalid" ng-click="alterarUsuario(userForm.$valid)">Alterar Cadastro</button>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</section>
			
		<!-- AngularJS e JS -->
		<script src="<c:url value='/resources/js/angular.min.js' />"></script>
		<script src="<c:url value='/resources/controller/UsuarioController.js' />"></script>
		<script src="<c:url value='/resources/js/jquery-3.2.1.min.js' />"></script>
		<script src="<c:url value='/resources/js/bootstrap.min.js' />"></script>
			 
	</body>

</html>
