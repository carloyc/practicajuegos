
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="context" value="${pageContext.request.contextPath}" />
<html>
<head>
  <title>Alta Juego</title>
  <link rel="stylesheet" href="${context}/assets/plugins/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="${context}/assets/dist/css/styles.css">
  <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
</head>
<body>
<div class="modal fade" id="details" tabindex="-1" aria-labelledby="exampleModalLabel2" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
      </div>
      <div class="modal-body">
        <h2> Registrar juego </h2>
        <form action="${context}/createGames" method="POST">
          <label>Nombre  </label>
          <input type="text" id="lbl_name" required>
          <br><br>

          <label>Imagen </label>
          <input type="file" id="lbl_imgGame" img src="data:image/jpeg;base64,${ game.imgGame }" required >
          <br><br>

          <label>Fecha de Estreno: </label>
          <input type="date"  id="lbl_datePremiere" required >
          <br><br>

          <label>Categoria </label>
          <select id="lbl_Category_idCategory" name="ID CATEGORY GAME :" required>
            <option value="0">Seleccione...</option>
            <option value="1">Shooter</option>
            <option value="2">Carros</option>
            <option value="3">Puzzle</option>
            <option value="4">MMORPG</option>
            <option value="5">Sand Box</option>
            <option value="6">Survival</option>
          </select>
          <br><br>
          <button onclick="btn-details()">Registrar Juego</button>
        </form>
      </div>
    </div>
  </div>
</div>

<script src="${context}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="${context}/assets/dist/js/main.js"> </script>
</body>
</html>

