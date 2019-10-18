<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main"/>
    <title>Inscripcion</title>
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
  <div class="container">
    <g:if test="${curso!=null}">
      <h3 class="barra">Inscripcion al Evento:</h3>  
        <div class="row mb-2">
          <div class="col-md-12">
            <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
              <div class="col p-4 d-flex flex-column position-static">
                <h3 class="mb-0">${curso.nombre}</h3>
                  <div class="mb-1 text-muted">Fecha de inicio: <g:formatDate format="dd/MM/yyyy" date="${curso.fecha_desde}"/></div>
                  <div class="mb-1 text-muted">Fecha de finalizacion: <g:formatDate format="dd/MM/yyyy" date="${curso.fecha_hasta}"/></div>
                  <div class="mb-1 text-muted">Carga Horaria: ${curso.cantidad_horas} HORAS</div>
                  <div class="mb-1 text-muted">Lugar: ${curso.lugar}</div>
                  <div class="mb-1 text-muted">Horarios: ${curso.horarios}</div>
                  <div class="mb-1 text-muted">Cupo maximo: ${curso.cupo_maximo} PARTICIPANTES</div>
                  <div class="mb-1 text-muted">Costo: $${curso.costo}</div>
              </div>                
            </div>
          </div>
        </div>
      <g:form method="post" action="cuponPago">           
        <g:hiddenField name="id" value="${curso.id}"/>
          <div class="form-group row">
            <div class="col-sm-10">
              <button type="submit" class="btn btn-success">Confirmar inscripcion</button>
                <g:link controller="aspirante" action="inicio" class="btn btn-success">Cancelar</g:link>
            </div>                   
          </div>
      </g:form>
    </g:if>
    <g:else>
      <div class="tcentrado">
        <div class="container">
          <h6>Ya estas inscripto en este curso<h6>
            <g:link controller="aspirante" action="inicio" class="btn btn-success">Volver</g:link>
        </div>
      </div>
    </g:else>
  </div>
</body>
</html>
