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
		<h2 class="text-center">Cadastrar Usuário</h2>
		<hr/>

		<div class="container-fluid">
			<div class="panel panel-default">

				<form action="/usuario/salvar" id="FormSolicitaUsuario" name="FormSolicitaUsuairo"  method="post">

					<jsp:include page="formulario-usuario.jsp" />

					<jsp:include page="formulario-endereco.jsp" />

					<div align="center" class="my-3">
						<button class="btn btn-primary" id="back"   type="button" onclick="window.location.href='<c:url value="/usuario/listar"/>'">Voltar</button>
						<button class="btn btn-primary" id="submit" type="submit">Cadastrar</button>
					</div>
				</form>

			</div>
		</div>
	</div>

	<jsp:include page="../componentes/footer.jsp" />
</body>
</html>