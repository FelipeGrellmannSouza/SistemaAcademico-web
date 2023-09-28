<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<!-- JavaScript Bundle with Popper -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
	<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Sistema Acadêmico</title>
</head>
<body>
	<!--Navbar Bootstrap-->
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
		<div class="container-fluid">
		  <a class="navbar-brand">Sistema Acadêmico</a>
		  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		  </button>
		  <div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
			  <li class="nav-item">
				<a class="nav-link active" aria-current="page" href="html/index.html">Home</a>
			  </li>
			  <li class="nav-item">
				<a class="nav-link" href="ServletAluno?cmd=listar">Listar</a>
			  </li>
			</ul>
			<!-- Consultar -->
			<form action= "ServletAluno?cmd=con" method="post" form class="d-flex" role="search">
			  <input name="txtRa" class="form-control me-2" type="text" placeholder="Digite a RA" aria-label="Search">
			  <!--<input type="submit" value="Enviar">-->
			  <button class="btn btn-outline-success" type="submit">Consultar</button>
			</form>
		  </div>
		</div>
	  </nav>
	<br/>
	<h3>Consultar Aluno</h3>
	<jsp:useBean id="aluno" scope="session" class="br.edu.exemplo.model.Aluno" />
	<%	SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy");	%>
	<form>
		<table>
			<tr>
				<td>RA:</td>
				<td><input type="text"  size="60" name="txtRa"
					value="<%=aluno.getRa()%>" readonly="readonly" /></td>
			</tr>
			<tr>
				<td>Nome:</td>
				<td><input type="text" size="60" name="txtNome"
					value="<%=aluno.getNome()%>"readonly="readonly"  /></td>
			</tr>
			<tr>
				<td>E-mail:</td>
				<td><input type="text" size="60" name="txtEmail"
					value="<%=aluno.getEmail()%>" readonly="readonly" /></td>
			</tr>
			<tr>
				<td>Endereço:</td>
				<td><input type="text" size="60" name="txtEndereco" 
				value="<%=aluno.getEndereco()%>" readonly="readonly" /></td>
			</tr>
			<tr>
				<td>Nascimento (dd/mm/aaaa):</td>
				<td><input type="text" size="60" name="txtData"
					value="<%=data.format(aluno.getDataNascimento())%>"	readonly="readonly" /></td>
			</tr>

			<tr>
				<td>Período:</td>
				<td><input type="text" size="60" name="txtIdade"
					value="<%=aluno.getPeriodo()%>" readonly="readonly" /></td>
			</tr>
		</table>
	</form>
</body>
</html>
