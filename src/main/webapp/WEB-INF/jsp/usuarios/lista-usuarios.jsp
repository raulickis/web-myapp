<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<jsp:include page="../componentes/header.jsp" />
</head>

<body>
	<jsp:include page="../componentes/menu.jsp" />

	<jsp:include page="../componentes/message.jsp" />

	<div class="container mt-3">
		<h2 class="text-center">Usuários</h2>
		<hr/>
		<div class="panel-heading mb-2">Usuários já cadastrados:</div>


		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Nome</th>
					<th scope="col">Documento</th>
					<th scope="col" class="d-none d-sm-table-cell">Email</th>
					<th scope="col" class="d-none d-sm-table-cell">Telefone</th>
					<th scope="col" class="d-none d-sm-table-cell">Data</th>
					<th scope="col">Ação</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${usuarios}" var="usuario">
					<tr>
						<th>${usuario.id}</th>
						<td>${usuario.nome}</td>
						<td>${usuario.documento}</td>
						<td class="d-none d-sm-table-cell">${usuario.email }</td>
						<td class="d-none d-sm-table-cell">(${usuario.ddd}) ${usuario.telefone}</td>
						<td class="d-none d-sm-table-cell" title="${usuario.dataCadastroFormatted}">${usuario.dataCadastroFormattedSimple}</td>
						<td class="text-nowrap">
							<a href="/usuario/editar/${usuario.id}"><i class="bi-pencil" title="Alterar"></i></a>
							&nbsp;
							<a href="/usuario/apagar/${usuario.id}"><i class="bi-x-square" title="Excluir"></i></a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div align="center">
			<button class="btn btn-primary" onclick="window.location.href='/'">Voltar</button>
			<button type="submit" class="btn btn-primary" onclick="window.location.href='/usuario/cadastrar'">Novo</button>
		</div>
	</div>
	<jsp:include page="../componentes/footer.jsp" />
</body>
</html>