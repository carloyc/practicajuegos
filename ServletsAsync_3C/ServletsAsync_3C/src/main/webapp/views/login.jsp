
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="context" value="${pageContext.request.contextPath}" />
<html lang="en">

<head>
    <title> Login </title>
    <link rel="stylesheet" href="${context}/assets/plugins/bootstrap/css/bootstrap.min.css">
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">

</head>

<body>
<center> <h1> Inicio </h1> </center>
<br>
<br>
<br>
<form action="${context}/login" method="POST">
    <div>
        <label for="correo" class="visually-hidden"> correo </label>
        <input type="correo" class="form-control" id="correo" placeholder="correo">
    </div>
    <div >
        <label for="password" class="visually-hidden">Contraseña </label>
        <input type="password" class="form-control" id="password" placeholder="Password">
    </div>
    <div >
        <button type="button" class="btn btn-secondary"><i class="fas fa-times"></i> No agregar</button>
        <button type="submit" class="btn btn-success"><i class="fas fa-plus"></i> Agregar</button>
    </div>
</form>
<script src="${context}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
</body>
</html>
