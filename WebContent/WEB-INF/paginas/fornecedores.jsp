<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Cadastro de fornecedores</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-dark" style="background-color:#380B61">
		<div class="container">
			<a class="navbar-brand h1" href="#">E-commerce</a>
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
	  					<a class="nav-link" href="ClienteServlet">Clientes</a>
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
			<h1 class="h3 font-weight-normal text-light">Cadastro de Fornecedores</h1>	
		</div>
	</div>
	
	<br/>
		<div class="container">	
			<form method="POST" action="fornecedorServlet">
				<div class="form-group">
			 		<input type="hidden" name="acao" value="CREATE"/>
					<input type="hidden" name="codigo" value="${fornecedor.codigo}"/>
					<label>Código</label>
			    		<input type="text" disabled name="codigo" value="${fornecedor.codigo}"/> <br>
			    </div>
			    
			    <div class="form-group">
		 			<label>Nome Fantasia</label>
		 			<input type="text" name="nome" class="form-control" placeholder="Digite nome fantasia" required="required" autofocus="autofocus" value="${fornecedor.nome}"/>
				</div>
				<div class="form-group">
					<label>Razao Social</label>
					<input type="text" name="razaoSocial" class="form-control" placeholder="Digite razao social" required="required" autofocus="autofocus" value="${fornecedor.razaoSocial}"/>
				</div>
				<div class="form-group">
					<label>CNPJ</label>
					<input type="text" name="cnpj" class="form-control" placeholder="Digite CNPJ" required="required" autofocus="autofocus" value="${fornecedor.cnpj}"/>
				</div>
				<div class="form-group">
					<label>E-Mail</label>
					<input type="text" name="email" class="form-control" placeholder="Digite E-Mail" required="required" autofocus="autofocus" value="${fornecedor.email}"/>
				</div>
				<br>
				<input class="btn btn-info" type="submit" value="Enviar" />
				<br>
				<br>
			</form>
		</div>
			
	<div class="container">
	<font color="red"><h2>${mensagem}</h2></font>
	</div>
	<div class="container">
		<table class="table table-hover">
			<thead style="background-color:#380B61" >
			<tr >
				<th class="text-light font-weight-normal">CODIGO</th>
				<th class="text-light font-weight-normal">NOME FANTASIA</th>			
				<th class="text-light font-weight-normal">RAZAO SOCIAL</th>
				<th class="text-light font-weight-normal">CNPJ</th>
				<th class="text-light font-weight-normal">E-MAIL</th>
				<th></th>
				<th></th>
			</tr>
			<tbody>
				<c:forEach var="f" items="${fornecedores}">
				<tr>
					<th>${f.codigo}</th>		
					<td>${f.nome}</td>
					<td>${f.razaoSocial}</td>
					<td>${f.cnpj}</td>
					<td>${f.email}</td>
					<td ><a class="btn btn-outline-warning" tabindex="-1" role="button" aria-disabled="true" href=fornecedorServlet?acao=RETRIEVE&codigo=${f.codigo}>Editar</a></td>
					<td ><a class="btn btn-outline-danger" tabindex="-1" role="button" aria-disabled="true"  href=fornecedorServlet?acao=DELETE&codigo=${f.codigo}>Excluir</a></td>
				</tr>	
				</c:forEach>
			<tbody>
		</table>
	</div>
	<footer>
		
	</footer>
	</body>
</html>