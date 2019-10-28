<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main_aspirante"/>
    <title>Cupon</title>
</head>
<body>
<div class="centrar">
<g:if test="${cupon.tipoInscrip=="Inscripto"}">
  <h6 class="mt-3">Para concretar la inscripcion, acercarse por seccion alumno y entregar el siguiente cupon de pago<h6>
</g:if>
<g:else>
  <h6 class="mt-3">Se ha cubierto el cupo maximo de inscripcion, pero eres un Postulante<h6>
</g:else>
    <div class="container">
    <div class="menucentradocurso">
      <div class="row">
        <div class="col-md-12">
          <div class="row no-gutters border rounded overflow-hidden flex-md-row shadow-sm h-md-250 position-relative">
            <div class="col p-4 d-flex flex-column position-static">
              <g:if test="${cupon.tipoInscrip=="Inscripto"}">
              <h3 class="mb-1">Tu Cupon</h3>
              </g:if>
              <g:else>
              <h3 class="mb-1">Datos de la inscripcion como postulante</h3>
              </g:else>
                <div class="mb-1">Nombre y Apellido: <label id="nombre">${cupon.asp.nombre} </label> <label id="apellido">${cupon.asp.apellido}</label></div>
                <div class="mb-1">DNI: <label id="dni">${cupon.asp.dni}</label></div> 
                <div class="mb-1">Nombre del curso: <label id="curso">${cupon.curso.nombre}</label></div>
                <div class="mb-1">Costo: <label id="costo">${cupon.curso.costo}</label></div>
                <div class="mb-1">Estado: <label id="estado">${cupon.tipoInscrip}</label></div>
                <div class="mb-1">Nro. inscripcion: <label id="idinscrip">${cupon.id}</label></div>
            </div>                
          </div>
        </div>
      </div>    
    </div>
    <g:link controller="aspirante" action="inicio" class="btn btn-success">Aceptar</g:link>
    </div>
</div>
</body>
</html>
