<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="br.edu.exemplo.model.Aluno"%>

<!DOCTYPE html>
<html>
<head>
	<!-- JavaScript Bundle with Popper -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
	<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
	<title>Lista Alunos</title>
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
		</br>
		</br>
		<hr>
			<h1>Lista de Alunos</h1>
			<table class="table">
			<hr>
			
				<thead>
					<tr>
						<th>RA</th>
						<th>Nome</th>
						<th>Endereço</th>
						<th>E-mail</th>
						<th>Nascimento</th>
						<th>Período</th>
						<th>Alterar</th>
						<th>Excluir</th>
					</tr>		
				</thead>
				<tbody>
					<%
					SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy");
					List<Aluno> lista = new ArrayList<Aluno>();
					lista = (ArrayList) request.getAttribute("alunosList");
					for (Aluno a : lista) {
					%>
			
					<tr>
						<td><%=a.getRa()%></td>
						<td><%=a.getNome()%></td>
						<td><%=a.getEndereco()%></td>
						<td><%=a.getEmail()%></td>
						<td><%=data.format(a.getDataNascimento())%></td>
						<td><%=a.getPeriodo()%></td>
						<td>
							<form action="ServletAluno?cmd=atu" method="post">
								<input type="hidden" name="txtRa" value="<%=a.getRa()%>">
								<input type="submit" value="Alterar">
							</form>
						</td>
						<td>
							<form action="ServletAluno?cmd=excluir" method="post">	
								<input type="hidden" name="txtRa" value="<%=a.getRa()%>">
								<input type="submit" value="Excluir">
							</form>
						</td>
			</tbody>
					<% } %>
	</table>	
</body>
</html>

