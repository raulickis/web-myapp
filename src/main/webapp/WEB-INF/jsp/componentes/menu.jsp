<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="/">
        <i class="bi-person-square"></i>
        <spam class="ml-2">Meu Sistema</spam>
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Cadastros
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="#">Usuários</a>
                    <a class="dropdown-item" href="#">Endereços</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item disabled" href="#">Outros</a>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link disabled" href="#">Sobre</a>
            </li>
            <li class="nav-item">
                <a class="nav-link disabled" href="#">Contato</a>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Digite aqui sua busca" aria-label="Buscar">
            <button class="btn btn-dark my-2 my-sm-0" type="submit">Buscar</button>
        </form>
    </div>
</nav>