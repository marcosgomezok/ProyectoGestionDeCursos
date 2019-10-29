<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main_admin"/>
    <title>Estadisticas</title>
</head>
<body>
<div class="container">
  <div class="menucentrado">
    <div class="row mb-2">
        <div class="col-md-3"></div>
            <div class="col-md-6">
              <table>
                <tr>
                  <th>Gestionar Pagos</th>
                </tr>
                <tr>
                  <td><g:link controller="Administrador" action="gestionPago">Modificar pagos</g:link></td>
                </tr>
                <tr>
                  <td><g:link controller="Administrador" action="listadoPagos">Listado de pagos por inscriptos</g:link></td>
                </tr>
              </table>
            </div>
        <div class="col-md-3"></div>
    </div>        
  </div>
  <div class="centrar">
      <g:link controller="Administrador" action="inicio" class="btn btn-success">Volver</g:link>
  </div>
</div>
</body>
</html>
