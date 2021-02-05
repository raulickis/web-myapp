<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="componentes/header.jsp" />
</head>
<body>
    <jsp:include page="componentes/menu.jsp" />

    <div class="container mt-4 text-center">
        <h1> Menu</h1>
        <p class="lead">
            <a href="/usuario/listar">Lista de Usuários</a> <br>
            <a href="/usuario/cadastrar">Novo Usuário</a> <br>
            <a href="/endereco/listar">Lista de Endereços</a> <br>
            <a href="/endereco/cadastrar">Novo Endereço</a> <br>
        <p>
    </div>
    <jsp:include page="componentes/footer.jsp" />
</body>
</html>

