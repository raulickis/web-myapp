<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<jsp:include page="../header.jsp" />
</head>

<body>
	<jsp:include page="../menu.jsp" />

	<div class="container">
		<h2 class="text-center">Usuários</h2>
		<hr/>
		<div class="panel-heading">Usuários já cadastrados</div>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Nome</th>
					<th>Documento</th>
					<th>Email</th>
					<th>Telefone</th>
					<th>Ação</th>
					<th>Data Cadastro</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${usuarios}" var="usuario">
					<tr>
						<td>${usuario.nome}</td>
						<td>${usuario.documento}</td>
						<td>${usuario.email }</td>
						<td>(${usuario.ddd}) ${usuario.telefone}</td>
						<td>Alterar | Excluir</td>
						<td>${usuario.dataCadastroFormatted }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div align="center">
			<button type="submit" class="btn btn-primary" onclick="window.location.href='/'">Voltar</button>
			<button type="submit" class="btn btn-primary" onclick="window.location.href='/usuario/novoUsuario'">Novo</button>
		</div>
	</div>
</body>
</html>