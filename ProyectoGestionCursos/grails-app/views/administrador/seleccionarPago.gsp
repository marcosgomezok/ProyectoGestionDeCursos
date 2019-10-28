<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main_admin"/>
    <title>Seleccion de pago</title>
</head>
<body>
<div class="container">
  <div class="centrar mb-3 mt-3 "><h3>Modifica el pago del inscripto</h3></div>
    <g:form method="post" action="modifyPago">  
    <g:hiddenField name="id" value="${inscrip.id}" />
      <div class="form-group row">
          <div class="col-sm-12">
            <select name="pago" class="custom-select mb-3" required>
              <option selected disabled hidden value="${inscrip.cupon.pago}">${inscrip.cupon.pago}</option>
              <option value="Realizado">Realizado</option>
              <option value="Pendiente">Pendiente</option>                   
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