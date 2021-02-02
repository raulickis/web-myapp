<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<% if (request.getAttribute("errors") != null) { %>

    <div id="message" class="alert alert-danger alert-dismissible fade show" role="alert">
        <strong>${message}</strong><br/>
        <c:forEach items="${errors}" var="error">
            <i class="bi-arrow-right"></i> ${error} <br/>
        </c:forEach>
        <button type="button" class="close" data-dismiss="alert" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>

<% } else if (request.getAttribute("message") != null) { %>

    <div id="message" class="alert alert-success alert-dismissible fade show" role="alert">
        <br/><strong>${message}</strong><br/><br/>
        <button type="button" class="close" data-dismiss="alert" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>

<% } %>
