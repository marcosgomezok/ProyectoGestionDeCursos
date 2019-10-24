<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main_admin"/>
    <title>Estadisticas</title>
</head>
<body>
<div class="estadisticas">
<div class="container">
    <div class="row mb-2">
        <div class="col-md-3"></div>
            <div class="col-md-6">
              <table>
                <tr>
                  <th>Estadisticas</th>
                </tr>
                <tr>
                  <td><g:link controller="Estadisticas" action="inscriptosxCurso">Listado de inscriptos por cursos</g:link></td>
                </tr>
                <tr>
                  <td><g:link controller="Estadisticas" action="pagoInscriptos">Listados de inscriptos que efectuaron el pago/inscriptos que falta realizar el pago</g:link></td>
                </tr>
                <tr>
                  <td><g:link controller="Estadisticas" action="cursosxFecha">Cursos realizados en una fecha determinada</g:link></td>
                </tr>
              </table>
            </div>
        <div class="col-md-3"></div>
    </div>        
</div>
</div>
  <div class="estadisticas">
    <g:link controller="Administrador" action="inicio" class="btn btn-success">Volver</g:link>
  </div>
</body>
</html>

   