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
        <button type="submit" class="btn btn-success">Modificar datos</button>
      </div>                                       
    </g:form>
    <div class="centrar mb-3 mt-3 "><h3>Cambiar contraseña</h3></div>
    <g:form method="post" action="modifyPw">
    <div class="form-group row">
        <label for="usuario" class="col-sm-2 col-form-label"></label>
          <div class="col-sm-10">   
            <div class="messagealert" role="status"><label id="msj"><g:if test="${flash.messagepw}">Error: ${flash.messagepw}</label></g:if></div>
          </div> 
    </div> 
      <div class="form-group row">
        <label for="contraseña" class="col-sm-2 col-form-label">Contraseña actual</label>
          <div class="col-sm-10">
            <input type="password" class="form-control" name="actpassword" id="actpassword" value="${params.actpassword}" required onclick="borrarmsj()">
          </div>
      </div>
      <div class="form-group row">
        <label for="rep_contraseña" class="col-sm-2 col-form-label">Nueva contraseña</label>
          <div class="col-sm-10">
            <input type="password" class="form-control" name="password" id="password" value="${params.password}" onchange="clavescheck()" required onclick="borrarmsj()">
          </div>
      </div>
      <div class="form-group row">
        <label for="rep_contraseña" class="col-sm-2 col-form-label">Repite contraseña</label>
          <div class="col-sm-10">
            <input type="password" class="form-control" name="re_password" id="re_password" value="${params.re_password}" onchange="clavescheck()"required onclick="borrarmsj()">
          </div>
      </div>
      <div class="centrar">
        <button type="submit" class="btn btn-success">Modificar contraseña</button>
      </div>                                       
    </g:form>
      <div class="centrar botonfinal">
        <g:link controller="aspirante" action="inicio" class="btn btn-success">Cancelar</g:link>
      </div> 
</div>
</body>
</html>