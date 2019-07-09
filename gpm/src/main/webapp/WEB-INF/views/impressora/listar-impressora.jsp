<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html ng-app="ImpressoraControllerApp">
	<head>
		 <meta charset="utf-8">
		 <meta http-equiv="X-UA-Compatible" content="IE=edge">
		 <meta name="viewport" content="width=device-width, initial-scale=1">
		 <title>GPM | LISTA DE IMPRESSORAS</title>

		 <!-- CSS -->
		<link href="<c:url value='../resources/css/bootstrap.min.css' />" rel="stylesheet"></link>
		<link href="<c:url value='../resources/css/style.css' />" rel="stylesheet"></link> 

	</head>
	<body>
	
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
	
	 <div id="main" class="container-fluid" style="margin-top: 50px" ng-controller="ImpressoraController">
	 
	 	<div id="top" class="row">
			<div class="col-sm-3">
				<h2>Lista Impressora</h2>
			</div>
			<div class="col-sm-6">
				
				<div class="input-group h2">
					<input name="setor" class="form-control" id="setor" type="text" placeholder="Pesquisar Impressora" ng-model="setor">
					<span class="input-group-btn">
						<button class="btn btn-primary" type="submit" ng-click="buscar()">
							<span3 class="glyphicon glyphicon-search"></span>
						</button>
					</span>
				</div>
				
			</div>
			<div class="col-sm-3">
				<a href="cadastrar" class="btn btn-primary pull-right h2">Cadastrar Nova Impressora</a>
			</div>
		</div> <!-- /#top -->
	 
	 
	 	<hr />
	 	<div id="list" class="row">
		
		<div class="table-responsive col-md-12">
			<table class="table table-striped" cellspacing="0" cellpadding="0" ng-controller="ImpressoraController" data-ng-init="init()">
				<thead>
					<tr>
						<th>ID</th>
						<th>Modelo</th>
						<th>Setor</th>
						<th>IP</th>
						<th>Ramal</th>
						<th>N�mero de S�rie</th>
						<th>Descri��o</th>
						<th class="actions">A��es</th>
					</tr>
				</thead>
				<tbody>
					<tr ng-repeat="impressora in impressoras">
						<td>{{impressora.id}}</td>
						<td>{{impressora.modelo}}</td>
						<td>{{impressora.setor}}</td>
						<td>{{impressora.ip}}</td>
						<td>{{impressora.ramal}}</td>
						<td>{{impressora.num_serie}}</td>
						<td>{{impressora.descricao}}</td>
						<td class="actions">
							<a class="btn btn-success btn-xs" href="visualizar" ng-href="visualizar/{{impressora.id}}">Visualizar</a>
							<a class="btn btn-warning btn-xs" href="alterar" ng-href="alterar/{{impressora.id}}" >Editar</a>
							<a class="btn btn-danger btn-xs"  href="excluir" data-toggle="modal" data-target="#delete-modal" ng-click="excluir(impressora.id, impressora.modelo)">Excluir</a>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		
		</div> <!-- /#list -->
		
		<div id="bottom" class="row">
			<div class="col-md-12">
				<ul class="pagination">
					<li class="disabled"><a>&lt; Anterior</a></li>
					<li class="disabled"><a>1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li class="next"><a href="#" rel="next">Pr�ximo &gt;</a></li>
				</ul><!-- /.pagination -->
			</div>
		</div> <!-- /#bottom -->
	 </div> <!-- /#main --> 
	
	 	<!-- AngularJS e JS -->
		<script src="<c:url value='../resources/js/angular.min.js' />"></script>
		<script src="<c:url value='../resources/controller/ImpressoraController.js' />"></script>
		<script src="<c:url value='../resources/js/jquery-3.2.1.min.js' />"></script>
		<script src="<c:url value='../resources/js/bootstrap.min.js' />"></script>
	
	</body>
	
</html>