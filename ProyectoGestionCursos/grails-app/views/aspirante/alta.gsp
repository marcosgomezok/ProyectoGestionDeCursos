<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main"/>
    <asset:javascript src="validarCampos.js"/>
    <title>Alta</title>
</head>
<body>
<div class="container">
  <div class="centrar mb-3 mt-3 "><h3>Registrarse como un nuevo Aspirante</h3></div>
    <g:form method="post" action="save">
      <div class="form-group row">
        <label for="usuario" class="col-sm-2 col-form-label">Usuario</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="usuario" name="usuario" required>
          </div>
      </div>
      <div class="form-group row">
        <label for="contraseña" class="col-sm-2 col-form-label">Contraseña</label>
          <div class="col-sm-10">
            <input type="password" class="form-control" name="password" id="password" onblur="tomaclave()" required>
          </div>
      </div>
      <div class="form-group row">
        <label for="rep_contraseña" class="col-sm-2 col-form-label">Repetir contraseña</label>
          <div class="col-sm-10">
            <input type="password" class="form-control" id="re_password" onblur="tomareclave()"required>
          </div>
      </div>
      <div class="form-group row">
        <label for="apellido" class="col-sm-2 col-form-label">Apellido</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="apellido" name="apellido" required>
          </div>
      </div>
      <div class="form-group row">
        <label for="nombre" class="col-sm-2 col-form-label">Nombre</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="nombre" name="nombre" required>
          </div>
      </div>
      <div class="form-group row">
        <label for="dni" class="col-sm-2 col-form-label">DNI</label>
          <div class="col-sm-10">
            <input type="number" class="form-control" id="dni" name="dni" required>
          </div>
      </div>
      <div class="form-group row">
        <label for="mail" class="col-sm-2 col-form-label">Email</label>
          <div class="col-sm-10">
            <input type="email" class="form-control" id="mail" name="email" required>
          </div>
      </div>         
      <div class="form-group row">
        <legend class="col-form-label col-sm-2 pt-0">Categoría</legend>
          <div class="col-sm-10">
            <select name="categoria" class="custom-select mb-3" required>
              <option value="" selected disabled hidden>Elija una categoria</option>
              <option value="Alumno">Alumno</option>
              <option value="Docente">Docente</option>
              <option value="Publico General">Publico General</option>                       
            </select>
          </div>
      </div>
      <div class="centrar">
        <button type="submit" class="btn btn-success">Aceptar</button>
        <g:link controller="usuario" action="inicio" class="btn btn-success">Cancelar</g:link>
      </div>                                       
    </g:form>
</div>
</body>
</html>
