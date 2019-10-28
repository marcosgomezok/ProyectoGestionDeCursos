<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main_admin"/>
    <title>Gestion de expositores</title>
</head>
<body>
<div class="container">
  <div class="menucentrado">
    <div class="row mb-2">
        <div class="col-md-3"></div>
            <div class="col-md-6">
              <table>
                <tr>
                  <th>Gestion de Expositores</th>
                </tr>
                <tr>
                  <td><g:link controller="expositores" action="altaExpositor">Alta Expositor</g:link></td>
                </tr>
                <tr>
                  <td><g:link controller="expositores" action="listadoExpositores">Listado Expositores</g:link></td>
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