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


	<div class="container mt-3">
		<h2 class="text-center">Cadastrar Usuário</h2>
		<hr/>

		<div class="container-fluid">
			<div class="panel panel-default">

				<form action="salvaUsuario" id="FormSolicitaUsuario" name="FormSolicitaUsuairo"  method="post">

					<div class="row">
						<div class="col-md-12 mb-2">
							<label for="nome">Nome</label>
							<input id="nome" name="nome" class="form-control" required />
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 mb-2">
							<label for="document">Documento</label>
							<input id="document" name="document" class="form-control" required placeholder="CPF ou CNPJ"/>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 mb-2">
							<label for="email">E-mail</label>
							<input id="email" name="email" class="form-control" required />
						</div>
					</div>
					<div class="row">
						<div class="col-md-2 mb-2">
							<label for="ddd">DDD</label>
							<input id="ddd" name="ddd" class="form-control" required/>
						</div>
						<div class="col-md-10 mb-2">
							<label for="telefone">Telefone</label>
							<input id="telefone" name="telefone" class="form-control" required/>
						</div>
					</div>

					<div align="center" class="my-3">
						<button class="btn btn-primary btn-lg" onclick="window.location.href='/'">Voltar</button>
						<button class="btn btn-primary btn-lg" id="submit" type="submit">Cadastrar</button>
					</div>
				</form>

			</div>
		</div>
	</div>

	<jsp:include page="../footer.jsp" />
</body>
</html>