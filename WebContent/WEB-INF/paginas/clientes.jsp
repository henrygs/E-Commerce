<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html SYSTEM "about:legacy-compat">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
<title>Cria de clientes</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark" style="background-color:#380B61">
		<div class="container">
			<a class="navbar-brand h1" href="index">E-commerce</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSite">
	    		<spam class="navbar-toggler-icon"></spam>
	  		</button>
	  		<div class="collapse navbar-collapse" id="navbarSite">
	  			<ul class="navbar-nav">
	  				<li class="nav-item">
	  					<a class="nav-link" href="index">Início</a>
	  				</li>
	  				<li class="nav-item">
	  					<a class="nav-link" href="fornecedorServlet">Fornecedores</a>
	  				</li>
	  				<li class="nav-item">
	  					<a class="nav-link" href="clienteServlet">Clientes</a>
	  				</li>
	  				<li class="nav-item">
	  					<a class="nav-link" href="ProdutoServlet">Produtos</a>
	  				</li>
	  			</ul>
	  			<div class="navbar-nav ml-auto">
		  			<form class="form-inline">
		  				<input class="form-control mr-3" type="search" name="" placeholder="Buscar...">
		  				<button class="btn btn-default bg-light" type="submit">Pesquisar</button>
		  			
		  			</form>
		  		</div>
	  		</div>
	  	</div>
	</nav>

	<div class="container-fluid boder ">
		<div class="row form-ecommerce justify-content-center h3 mb-3" style="background-color:#4B088A">
			<h1 class="h3 font-weight-normal text-light">Cadastro de Clientes</h1>	
		</div>
	</div>
	
	<br/>
		<div class="container">	
			<form method="POST" action="clienteServlet">
				<div class="form-group">
			 		<input type="hidden" name="acao" value="CREATE"/>
					<input type="hidden" name="codigo" value="${cliente.codigo}"/>
					<label>Código</label>
			    		<input type="text" disabled name="codigo" value="${cliente.codigo}"/> <br>
			    </div>
			    
			    <div class="form-group">
		 			<label>Nome</label>
		 			<input type="text" name="nome" class="form-control" placeholder="Nome" required="required" autofocus="autofocus" value="${cliente.nome}"/>
				</div>
				<div class="form-group">
					<label>E-Mail</label>
					<input type="text" name="email" class="form-control" placeholder="Digite E-Mail" required="required" autofocus="autofocus" value="${cliente.email}"/>
				</div>
				<div class="form-group">
					<label>% DESCONTO</label>
					<input type="text"  name="percentualDesconto"  class="form-control" placeholder="Porcentagem do desconto" required="required" autofocus="autofocus" value="${cliente.percentualDesconto}"/>
				</div>
				<div class="form-group">
					<label>cpf</label>
					<input type="text" name="cpf" class="form-control" placeholder="Digite CPF" required="required" autofocus="autofocus" value="${cliente.cpf}"/>
				</div>
				<br>
				<input class="btn btn-info" type="submit" value="Enviar" />
				<br>
				<br>
			</form>
		</div>

	<font color="red"><h2>${mensagem}</h2></font>

	<div class="container">
		<table class="table table-hover">
			<thead style="background-color:#380B61" >
			<tr >
				<th class="text-light font-weight-normal">CODIGO</th>
				<th class="text-light font-weight-normal">NOME</th>			
				<th class="text-light font-weight-normal">E-MAIL</th>
				<th class="text-light font-weight-normal">% DESCONTO</th>
				<th class="text-light font-weight-normal">CPF</th>
				<th></th>
				<th></th>
			</tr>
			<tbody>
				<c:forEach var="c" items="${clientes}">
				<tr>
					<th>${c.codigo}</th>		
					<td>${c.nome}</td>
					<td>${c.email}</td>
					<td>${c.percentualDesconto}</td>
					<td>${c.cpf}</td>
					<td ><a class="btn btn-outline-warning" tabindex="-1" role="button" aria-disabled="true" href=clienteServlet?acao=RETRIEVE&codigo=${c.codigo}>Editar</a></td>
					<td ><a class="btn btn-outline-danger" tabindex="-1" role="button" aria-disabled="true"  href=clienteServlet?acao=DELETE&codigo=${c.codigo}>Excluir</a></td>
				</tr>	
				</c:forEach>
			<tbody>
		</table>
	</div>
	<footer class="container-fluid boder">
		<div class="row form-ecommerce justify-content-center h4 mb-3" style="background-color:#380B61">
				<h4 class="h4 font-weight-normal text-light">&copy E-Commerce 2020</h4>
		</div>
	</footer>
</body>
</html>