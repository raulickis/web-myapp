<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="header.jsp" />
</head>
<body>
    <jsp:include page="menu.jsp" />

    <div class="container mt-4 text-center">
        <h1> Menu</h1>
        <p class="lead">
            <a href="/usuario/listar">Lista de Usuários</a> <br>
            <a href="/usuario/cadastrar">Novo usuário</a> <br>
        <p>
    </div>
    <jsp:include page="footer.jsp" />
</body>
</html>

