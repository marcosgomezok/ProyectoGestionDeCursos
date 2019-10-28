<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main_admin"/>
    <title>Seleccion de certificado</title>
</head>
<body>
<div class="container">
  <div class="centrar mb-3 mt-3 "><h3>Modifica el certificado del inscripto</h3></div>
    <g:form method="post" action="modifyCertif">  
    <g:hiddenField name="id" value="${inscrip.id}" />
      <div class="form-group row">
          <div class="col-sm-12">
            <select name="tipoCertif" class="custom-select mb-3" required>
              <option selected disabled hidden value="">Seleccione el tipo de certificado</option>
              <option value="Asistencia">Asistencia</option>
              <option value="Aprobado">Aprobado</option>            
              <option value="Expositor">Expositor</option>           
            </select>
          </div>
      </div>
      <div class="centrar">
        <button type="submit" class="btn btn-success">Aceptar</button>
        <g:link controller="Administrador" action="inicio" class="btn btn-success">Cancelar</g:link>
      </div>                                       
    </g:form>
</div>
</body>
</html>