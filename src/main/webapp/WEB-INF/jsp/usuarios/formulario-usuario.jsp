<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<input id="id" name="id" class="d-none" value="${usuario.id}"/>

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
        <input id="nome" name="nome" class="form-control" value="${usuario.nome}" required maxlength="100" />
    </div>
</div>
<div class="row">
    <div class="col-md-12 mb-2">
        <label for="documento">Documento</label>
        <input id="documento" name="documento" class="form-control" value="${usuario.documento}" required placeholder="CPF ou CNPJ" maxlength="18" />
    </div>
</div>
<div class="row">
    <div class="col-md-12 mb-2">
        <label for="email">E-mail</label>
        <input id="email" name="email" class="form-control" value="${usuario.email}" required maxlength="100" />
    </div>
</div>
<div class="row">
    <div class="col-md-2 mb-2">
        <label for="ddd">DDD</label>
        <input id="ddd" name="ddd" class="form-control" value="${usuario.ddd}" required maxlength="2" />
    </div>
    <div class="col-md-10 mb-2">
        <label for="telefone">Telefone</label>
        <input id="telefone" name="telefone" class="form-control" value="${usuario.telefone}" required maxlength="10" />
    </div>
</div>

<jsp:include page="../componentes/avatar.jsp" />