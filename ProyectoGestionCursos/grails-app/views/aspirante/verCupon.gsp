<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main_aspirante"/>
    <title>Mi cupon</title>
</head>
<body>
<div class="menucentrado">
  <div class="container">
    <div class="submenucentradocurso">
      <div class="row">
        <div class="col-md-12">
          <div class="row no-gutters border rounded overflow-hidden flex-md-row shadow-sm h-md-250 position-relative">
            <div class="col p-4 d-flex flex-column position-static">
                <h3 class="mb-1">Tu Cupon</h3>
                <div class="mb-1">Nombre y Apellido: <label id="nombre">${inscripcion.asp.nombre} </label> <label id="apellido">${inscripcion.asp.apellido}</label></div>
                <div class="mb-1">DNI: <label id="dni">${inscripcion.asp.dni}</label></div> 
                <div class="mb-1">Nombre del curso: <label id="curso">${inscripcion.curso.nombre}</label></div>
                <div class="mb-1">Costo: <label id="costo">${inscripcion.curso.costo}</label></div>
                <div class="mb-1">Estado: <label id="estado">${inscripcion.tipoInscrip}</label></div>
                <div class="mb-1">Nro. inscripcion: <label id="idinscrip">${inscripcion.id}</label></div>
            </div>                
          </div>
        </div>
      </div>
    </div>
    <div class="submenucentradocurso">
      <g:link controller="aspirante" action="inicio" class="btn btn-success">Volver</g:link>
    </div>
  </div>
</div>
</body>
</html>