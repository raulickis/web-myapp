<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="header.jsp" />
</head>
<body>
    <jsp:include page="menu.jsp" />

    <div class="container">
        <div class="starter-template">
            <h1> Menu</h1>
            <p class="lead">
                <a href="/usuario/listaUsuarios">Lista de Usuários</a> <br>
                <a href="/usuario/novoUsuario">Novo usuário</a> <br>
            <p>
        </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="/resources/js/bootstrap.min.js"></script>
</body>
</html>

