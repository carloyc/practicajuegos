<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="context" value="${pageContext.request.contextPath}" />
<html>
<head>
    <title>Juegos</title>
    <link rel="stylesheet" href="${context}/assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${context}/assets/dist/css/styles.css">
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
</head>
<body>
<div class="modal fade" id="details" tabindex="-1" aria-labelledby="exampleModalLabel2" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-header">
            <h1 class="modal-title" id="exampleModalLabel2"><center>Detalles de Juegos</center> </h1>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <h2>Id : </h2>
            <label id="lbl_idGames"></label>
            <br>
            <h2>Name: </h2>
            <label id="lbl_name"></label>
            <br>
            <h2>Imagen:</h2>
            <img src="data:image/jpeg;base64,${ game.imgGame }"
            <br>
            <h2>Día de estreno:</h2>
            <label id="lbl_datePremiere"></label>
            <br>
            <h2>Id de categoria :</h2>
            <label id="lbl_Category_idCategory"></label>
            <br>
            <h2>Stado:</h2>
            <label id="lbl_status"></label>
        </div>
        <br>
        <img src="data:image/jpeg;base64,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" width="300" height="200">
    </div>
</div>

<script src="${context}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="${context}/assets/dist/js/main.js"> </script>
</body>
</html>