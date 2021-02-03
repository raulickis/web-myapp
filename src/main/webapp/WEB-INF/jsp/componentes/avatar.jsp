<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
                    <a href="#" class="overlay zoom" onclick="$('#avatar').attr('src','<c:url value="/resources"/>/pic/user_avatar_<%=String.format("%02d", i) %>.png');$('#fotoUrl').attr('value','<c:url value="/resources"/>/pic/user_avatar_<%=String.format("%02d", i) %>.png');$('#modPictures').modal('toggle')">
                        <img class="mx-2 my-2" name='listPic' href="#" width="100px" src='<c:url value="/resources"/>/pic/user_avatar_<%=String.format("%02d", i) %>.png'/>
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