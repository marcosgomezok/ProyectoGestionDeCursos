<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main_admin"/>
    <title>Gestion de cursos</title>
</head>
<body>
<div class="container">
  <div class="menucentrado">
    <div class="row mb-2">
        <div class="col-md-3"></div>
            <div class="col-md-6">
              <table>
                <tr>
                  <th>Gestion de cursos</th>
                </tr>
                <tr>
                  <td><g:link controller="Curso" action="alta">Alta curso</g:link></td>
                </tr>
                <tr>
                  <td><g:link controller="Curso" action="modificar">Modificar curso</g:link></td>
                </tr>
                <tr>
                  <td><g:link controller="Curso" action="baja">Baja curso</g:link></td>
                </tr>
                <tr>
                  <td><g:link controller="Curso" action="listadoCursos">Listado cursos</g:link></td>
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