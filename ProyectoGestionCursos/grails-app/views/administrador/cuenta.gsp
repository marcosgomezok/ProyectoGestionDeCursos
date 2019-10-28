<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main_admin"/>
    <title>Cuenta</title>
</head>
<body>
<div class="container">
  <div class="centrar mb-3 mt-3 "><h3>Modifica tus datos personales</h3></div>
    <g:form method="post" action="modify">
      <div class="form-group row">
        <label for="apellido" class="col-sm-2 col-form-label">Apellido</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="apellido" name="apellido" value="${adm.apellido}" required>
          </div>
      </div>
      <div class="form-group row">
        <label for="nombre" class="col-sm-2 col-form-label">Nombre</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="nombre" name="nombre" value="${adm.nombre}" required>
          </div>
      </div>
      <div class="form-group row">
        <label for="dni" class="col-sm-2 col-form-label">DNI</label>
          <div class="col-sm-10">
            <input type="number" class="form-control" id="dni" name="dni" value="${adm.dni}" required>
          </div>
      </div>        
      <div class="centrar">
        <button type="submit" class="btn btn-success">Aceptar</button>
        <g:link controller="aspirante" action="inicio" class="btn btn-success">Cancelar</g:link>
      </div>                                       
    </g:form>
</div>
</body>
</html>