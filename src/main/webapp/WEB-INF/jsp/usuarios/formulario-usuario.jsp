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

	<jsp:include page="../message.jsp" />

	<div class="container mt-3">
		<h2 class="text-center">Cadastrar Usuário</h2>
		<hr/>

		<div class="container-fluid">
			<div class="panel panel-default">

				<form action="/usuario/salvar" id="FormSolicitaUsuario" name="FormSolicitaUsuairo"  method="post">

					<div class="row">
						<div class="col-md-12 mb-2 view overlay zoom">
							<label for="fotoUrl">URL da Foto de Perfil</label>
							<input id="fotoUrl" name="fotoUrl" class="d-none" value="${usuario.fotoUrl}" required />
							<a href="#modPictures" class="d-block" onclick="$('#modPictures').modal('toggle')">
								<img class="img-fluid rounded mx-auto d-block" width=200 id="avatar" id="avatar" title="Toque na foto para alterá-la" src="${usuario.fotoUrl}"/>
							</a>
						</div>
					</div>

					<div class="row">
						<div class="col-md-12 mb-2">
							<label for="nome">Nome</label>
							<input id="nome" name="nome" class="form-control" value="${usuario.nome}" required />
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 mb-2">
							<label for="documento">Documento</label>
							<input id="documento" name="documento" class="form-control" value="${usuario.documento}" required placeholder="CPF ou CNPJ"/>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 mb-2">
							<label for="email">E-mail</label>
							<input id="email" name="email" class="form-control" value="${usuario.email}" required />
						</div>
					</div>
					<div class="row">
						<div class="col-md-2 mb-2">
							<label for="ddd">DDD</label>
							<input id="ddd" name="ddd" class="form-control" value="${usuario.ddd}" required/>
						</div>
						<div class="col-md-10 mb-2">
							<label for="telefone">Telefone</label>
							<input id="telefone" name="telefone" class="form-control" value="${usuario.nome}" required/>
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


	<div class="modal fade" id="modPictures" tabindex="-1" role="dialog" aria-labelledby="modPicturesTitle" aria-hidden="true" style="z-index:9999;">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="modPicturesTitle">Opções de Fotos</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<center>
						<br>
						<%for(int i=1;i<=11;i++){%>
						<a href="#" class="overlay zoom" onclick="$('#avatar').attr('src','../resources/pic/user_avatar_<%=String.format("%02d", i) %>.png');$('#fotoUrl').attr('value','../resources/pic/user_avatar_<%=String.format("%02d", i) %>.png');$('#modPictures').modal('toggle')">
							<img class="mx-2 my-2" name='listPic' href="#" width="100px" src='../resources/pic/user_avatar_<%=String.format("%02d", i) %>.png'/>
						</a>
						<%}%>
					</center>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary mx-auto" data-dismiss="modal">Fechar</button>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="../footer.jsp" />
</body>
</html>