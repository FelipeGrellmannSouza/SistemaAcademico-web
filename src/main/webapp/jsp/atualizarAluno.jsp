<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- JavaScript Bundle with Popper -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
	<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
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
				<a class="nav-link" href="">Listar</a>
			  </li>
			</ul>
			<!-- Consultar -->
			<form action= "ServletAluno?cmd=con" method="post" form class="d-flex" role="search">
			  <input name="txtRa" class="form-control me-2" type="text" placeholder="Digite a RA" aria-label="Search">
			  <button class="btn btn-outline-success" type="submit">Consultar</button>
			</form>
		  </div>
		</div>
		</nav>	
		<br>
		<div class="container">
			<div class="row">
				<div class="cold-md-7">
					<h2>Atualizar Aluno</h2>
					<jsp:useBean id="aluno" scope="session" class="br.edu.exemplo.model.Aluno" />
					<%
					SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy");
					%>
					<form action="ServletAluno?cmd=atualizar" method="post">
						<div class="form-floating mb-3">	
							<input value="<%=aluno.getRa()%>" name="txtRa" maxlength="40" type="text" class="form-control" id="floatingInput1" readonly="readonly"> 
							<label>Ra</label>
						</div>
						<div class="form-floating mb-3">
							<input value="<%=aluno.getNome()%>" name="txtNome" maxlength="40" type="text" class="form-control" id="floatingInput1"> 
							<label>Nome completo</label>
						</div>
						<div class="form-floating mb-3">
							<input value="<%=aluno.getEmail()%>" name="txtEmail" maxlength="40" type="text" class="form-control"> 
							<label>E-mail</label>
						</div>
						<div class="form-floating mb-3">
							<input value="<%=aluno.getEndereco()%>" name="txtEndereco" maxlength="40" type="text" class="form-control"> 
							<label>Endereço</label>
						</div>
						<div class="form-floating mb-3">
							<input value="<%=aluno.getDataNascimento()%>" name="txtData" type="date" class="form-control" placeholder="Nascimento">
							<label>Nascimento</label>
						</div>
						<select name="cmbPeriodo" class="form-select mb-3" aria-label="Default select example">
							<option><%=aluno.getPeriodo()%></option>
							<option>Manhã</option>
							<option>Tarde</option>
							<option>Noite</option>
						</select>
						<input type="submit" value="Confirmar Atualização"/>
					 </form>
				</div>
			</div>
		</div>	
</body>
</html>
