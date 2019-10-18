<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main"/>
    <asset:javascript src="validarCampos.js"/>
    <title>Cupon</title>
</head>
<body>
<g:if test="${session!=null && session.user!=null}">
  <ul class="topnav"> 
    <li><a class="active" href="/">Inicio</a></li>
    <li><g:link controller="aspirante" action="certificados">Mis Certificados</g:link></li>
    <li><g:link controller="aspirante" action="miscursos">Mis Cursos</g:link></li>
    <li class="right"><g:link controller="usuario" action="logout"><i class="fas fa-sign-out-alt"></i> Cerrar sesión</g:link></li>
    <li class="right"><label class="usuario logeado" for="usuario-logeado" ><i class="fas fa-user"></i> Aspirante: ${session?.user?.usuario}</label></li>    
  </ul>  
</g:if>
<g:else>
  <ul class="topnav">
    <li><a class="active" href="/">Inicio</a></li>
    <li class="right"><g:link controller="usuario" action="inicio"><i class="fas fa-sign-in-alt"></i> Acceder</g:link></li>
    <li class="right"><g:link controller="aspirante" action="alta"><i class="fas fa-user"></i> Registrarse</g:link></li>
  </ul>
</g:else>
<div class="tcentrado">
  <h6>Para concretar la inscripcion, acercarse por seccion alumno y entregar el siguiente cupon de pago<h6>
    <div class="container">
      <div class="row mb-2">
        <div class="col-md-12">
          <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
            <div class="col p-4 d-flex flex-column position-static">
              <h3 class="mb-1">Tu Cupon</h3>
                <div class="mb-1">Nombre y Apellido: <label id="nombre">${cupon.asp.nombre} </label> <label id="apellido">${cupon.asp.apellido}</label></div>
                <div class="mb-1">DNI: <label id="dni">${cupon.asp.dni}</label></div> 
                <div class="mb-1">Nombre del curso: <label id="curso">${cupon.cursos.nombre}</label></div>
                <div class="mb-1">Costo: <label id="costo">${cupon.cursos.costo}</label></div>
                <div class="mb-1">Estado: <label id="estado">${cupon.tipoInscrip}</label></div>
                <div class="mb-1">Nro. inscripcion: <label id="idinscrip">${cupon.id}</label></div>
            </div>                
          </div>
        </div>
      </div>
    </div>
</div>
<script>(function () {corchetescuponpago()} )();</script>
</body>
</html>
