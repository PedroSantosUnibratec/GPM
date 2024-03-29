<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html ng-app="MonitorControllerApp" >
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<title>GPM | EDITAR CADASTRO DE MONITOR</title>
		
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

		<section>
			<!-- Painel -->
			<div class="panel panel-computador panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title panel-title-computador">Visualizar Cadastro de
						Monitor</h3>
				</div>
				
				<!-- Formul�rio -->
				<form class="form-horizontal" ng-controller="MonitorController">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="form-group">
								<label for="codigo" class="col-sm-2 control-label">Codigo
								*</label>
								<div class="col-sm-2">
									<input type="text" class="form-control" id="id" name="id"
										placeholder="C�digo do Monitor" required="required"
										autofocus="autofocus" ng-model="id" readonly="readonly"  ng-init="id='${monitor.id}'"/>
								</div>
							</div>
							
								<div class="form-group">
								<label for="modelo" class="col-sm-2 control-label">Modelo*</label>
								<div class="col-sm-3"">
									<input type="modelo" class="form-control" id="modelo" name="modelo"
										placeholder="Modelo do monitor" required="required"
										autofocus="autofocus" ng-model="modelo"  readonly="readonly" required ng-init="modelo='${monitor.modelo}'"/>
										<p class="help-block"></p>
								</div>
							</div>
								<div class="form-group"  >
								<label for="setor" class="col-sm-2 control-label">Setor*</label>
								<div class="col-sm-2">
									<input type="text" class="form-control" id="setor"
										name="setor" placeholder="Setor" required
										autofocus="autofocus" ng-model="setor.nome"  readonly="readonly" ng-init="setor='${monitor.monitor_setor.nome}'"/>
										
								</div>
								</div>

							<div class="form-group" >
								<label for="tomb" class="col-sm-2 control-label">Tombamento*</label>
								<div class="col-sm-3">
									<input type="text" class="form-control" id="montomb"
										name="montomb" placeholder="Tombamento(Patrim�nio)" required
										autofocus="autofocus" ng-model="montomb"  readonly="readonly" ng-init="montomb='${monitor.montomb}'"/>
										<p class="help-block"></p>
								</div>
								</div>
								<div class="form-group">
								<label for="descricao" class="col-sm-2 control-label">Descri��o*</label>
								<div class="col-sm-3">
									<input type="text" class="form-control" id="descricao"
										name="descricao" placeholder="Escreva uma descri��o"
										required autofocus="autofocus" ng-model="descricao"  readonly="readonly"  ng-init="descricao='${monitor.descricao}'" />
										<p class="help-block"></p>
									</div>
							</div>
							
						</div>
					</div>
				</form>
			</div>
		</section>
			
		<!-- AngularJS e JS -->
		<script src="<c:url value='/resources/js/angular.min.js' />"></script>
		<script src="<c:url value='/resources/controller/MonitorController.js' />"></script>
		<script src="<c:url value='/resources/js/jquery-3.2.1.min.js' />"></script>
		<script src="<c:url value='/resources/js/bootstrap.min.js' />"></script>
					 
	</body>

</html>
