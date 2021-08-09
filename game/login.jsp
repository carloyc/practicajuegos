<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">

<head>
    <title> Login </title>
    <meta charset="UTF-8">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
            integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"
            integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT"
            crossorigin="anonymous"></script>
</head>

<body>
<h1> Login </h1>
<br>
<br>
<br>
<form action="${context}/login" method="POST">
    <div>
        <h3>Ingrese Correo:</h3>
        <label for="correo" class="visually-hidden">Correo:</label>
        <input type="correo"  id="correo" placeholder="Ej. juanperez@utez.edu.mx">
    </div>
    <br>
    <div>
        <h3>Ingrese Contraseña:</h3>
        <label for="password" class="visually-hidden">Password:</label>
        <input type="password"  id="password" placeholder="******">
    </div>
    <br>
    <div>
        <button type="submit" class="btn btn-success"><i class="fas fa-plus"></i> Ingresar</button>
    </div>
    <img src="https://ih1.redbubble.net/image.1244363072.3588/flat,750x,075,f-pad,750x1000,f8f8f8.jpg" width="300" height="300">
</form>
</body>

</html>