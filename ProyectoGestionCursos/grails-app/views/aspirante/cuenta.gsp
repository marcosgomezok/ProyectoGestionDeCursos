<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main_aspirante"/>
    <title>Cuenta</title>
</head>
<body>
<div class="container">
  <div class="centrar mb-3 mt-3 "><h3>Modifica tus datos personales</h3></div>
    <g:form method="post" action="modify">
      <div class="form-group row">
        <label for="apellido" class="col-sm-2 col-form-label">Apellido</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="apellido" name="apellido" value="${asp.apellido}" required>
          </div>
      </div>
      <div class="form-group row">
        <label for="nombre" class="col-sm-2 col-form-label">Nombre</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="nombre" name="nombre" value="${asp.nombre}" required>
          </div>
      </div>
      <div class="form-group row">
        <label for="dni" class="col-sm-2 col-form-label">DNI</label>
          <div class="col-sm-10">
            <input type="number" class="form-control" id="dni" name="dni" value="${asp.dni}" required>
          </div>
      </div>
      <div class="form-group row">
        <label for="mail" class="col-sm-2 col-form-label">Email (opcional)</label>
          <div class="col-sm-10">
            <input type="email" class="form-control" id="mail" name="email" value="${asp.email}">
          </div>
      </div>         
      <div class="form-group row">
        <legend class="col-form-label col-sm-2 pt-0">Categoría</legend>
          <div class="col-sm-10">
            <select name="categoria" class="custom-select mb-3" required>
              <option selected hidden value="${asp.categoria}">${asp.categoria}</option>
              <option value="Alumno">Alumno</option>
              <option value="Docente">Docente</option>
              <option value="Publico General">Publico General</option>                     
            </select>
          </div>
      </div>
      <div class="centrar">
        <button type="submit" class="btn btn-success">Modificar datos</button>
      </div>                                       
    </g:form>
<div class="centrar mb-3 mt-3 "><h3>Cambiar contraseña</h3></div>
    <g:form method="post" action="modifyPw">
      <div class="form-group row">
        <label for="contraseña" class="col-sm-2 col-form-label">Contraseña actual</label>
          <div class="col-sm-10">
            <input type="password" class="form-control" name="actpassword" id="actpassword" required>
          </div>
      </div>
      <div class="form-group row">
        <label for="rep_contraseña" class="col-sm-2 col-form-label">Nueva contraseña</label>
          <div class="col-sm-10">
            <input type="password" class="form-control" name="password" id="password" onblur="tomaclave()" required>
          </div>
      </div>
      <div class="form-group row">
        <label for="rep_contraseña" class="col-sm-2 col-form-label">Repite contraseña</label>
          <div class="col-sm-10">
            <input type="password" class="form-control" name="re_password" id="re_password" onblur="tomareclave()"required>
          </div>
      </div>
      <div class="centrar">
        <button type="submit" class="btn btn-success">Modificar contraseña</button>
      </div>                                       
    </g:form>
    <g:link controller="aspirante" action="inicio" class="btn btn-success">Cancelar</g:link>
</div>
</body>
</html>
