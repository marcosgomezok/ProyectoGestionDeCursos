<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main_admin"/>
    <title>Seleccion de pago</title>
</head>
<body>
<div class="container">
    <g:form method="post" action="modifyPago">  
    <g:hiddenField name="id" value="${inscrip.id}" />
      <div class="centrar mb-3 mt-3 "><h3>Modifica forma de pago del inscripto</h3></div>
      <div class="form-group row">
          <div class="col-sm-12">
            <select name="formaPago" class="custom-select mb-3" required>
              <option selected disabled hidden value="">Seleccione forma de pago</option>
              <option value="Efectivo">Efectivo</option>
              <option value="Transferencia bancaria">Transferencia bancaria</option>         
              <option value="Tarjeta de credito">Tarjeta de credito</option>
              <option value="Tarjeta de debito">Tarjeta de debito</option>                 
            </select>
          </div>
      </div>
      <div class="centrar">
        <button type="submit" class="btn btn-success">Confirmar pago</button>
        <g:link controller="Administrador" action="gestionPago" class="btn btn-success">Cancelar</g:link>
      </div>                                       
    </g:form>
</div>
</body>
</html>