<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main_aspirante"/>
    <title>Mis cupones</title>
</head>
<body>
<div class="centrar">
  <g:if test="${miscupones}">
  <h3 class="barra">Tus cupones de pago</h3>
  <h6 class="mt-3">Para concretar una inscripcion, acercarse por seccion alumno y entregar el cupon de pago correspondiente<h6>
  <div class="container">
    <g:each in="${miscupones?}">
    <div class="submenucentradocurso">
      <div class="row">
        <div class="col-md-12">
          <div class="row no-gutters border rounded overflow-hidden flex-md-row shadow-sm h-md-250 position-relative">
            <div class="col p-4 d-flex flex-column position-static">
                <h3 class="mb-1">Tu Cupon</h3>
                <div class="mb-1">Nombre y Apellido: <label id="nombre">${it.asp.nombre} </label> <label id="apellido">${it.asp.apellido}</label></div>
                <div class="mb-1">DNI: <label id="dni">${it.asp.dni}</label></div> 
                <div class="mb-1">Nombre del curso: <label id="curso">${it.curso.nombre}</label></div>
                <div class="mb-1">Costo: <label id="costo">${it.curso.costo}</label></div>
                <div class="mb-1">Estado: <label id="estado">${it.tipoInscrip}</label></div>
                <div class="mb-1">Nro. inscripcion: <label id="idinscrip">${it.id}</label></div>
            </div>                
          </div>
        </div>
      </div>
    </div>
    </g:each>
  </g:if>   
  <g:else>
    <div class="m-3"><h3>No tienes ningun cupon de pago registrado</h3></div>      
  </g:else>
    <div class="submenucentradocurso">
      <g:link controller="aspirante" action="inicio" class="btn btn-success">Volver</g:link>
    </div>
  </div>
</div>
</body>
</html>