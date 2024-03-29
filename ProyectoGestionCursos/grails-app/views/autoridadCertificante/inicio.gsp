<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main_admin"/>
    <title>Gestion de autoridades</title>
</head>
<body>
<div class="container">
  <div class="menucentrado">
    <div class="row mb-2">
        <div class="col-md-3"></div>
            <div class="col-md-6">
              <table>
                <tr>
                  <th>Gestion de Autoridades Certificantes</th>
                </tr>
                <tr>
                  <td><g:link controller="autoridadCertificante" action="altaAutoridadCertificante">Alta Autoridad Certificante</g:link></td>
                </tr>
                <tr>
                  <td><g:link controller="autoridadCertificante" action="modificar">Modificar Autoridad Certificante</g:link></td>
                </tr>
                <tr>
                  <td><g:link controller="autoridadCertificante" action="baja">Baja Autoridad Certificante</g:link></td>
                </tr>
                <tr>
                  <td><g:link controller="autoridadCertificante" action="listadoAutoridad">Listado Autoridad Certificante</g:link></td>
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