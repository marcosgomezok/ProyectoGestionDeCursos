<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main"/>
    <title>Inicio</title>
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
  <h1>Obtuviste los siguientes certificados</h1>
  <div class="container">
    <g:each in="${miscertif?}" var="misc">
      <div class="row mb-2">
        <div class="col-md-12">
          <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
            <div class="col p-4 d-flex flex-column position-static">
              <g:each in="${cursos?}" var="c">
                <g:if test="${[c.id] == misc.cursos.id}">
                  <h3 class="mb-0">Tipo de Certificado: <label id="c">${misc.certif.tipoCertif}</label></h3>
                  <h3 class="mb-0">Nombre: <label id="curso">${c.nombre}</label></h3>
                  <div class="mb-1 text-muted">Fecha de inicio: <g:formatDate format="dd/MM/yyyy" date="${c.fecha_desde}"/></div>
                  <div class="mb-1 text-muted">Fecha de finalizacion: <g:formatDate format="dd/MM/yyyy" date="${c.fecha_hasta}"/></div>
                  <div class="mb-1 text-muted">Carga Horaria: ${c.cantidad_horas} HORAS</div>
                  <div class="mb-1 text-muted">Lugar: ${c.lugar}</div>
                  <div class="mb-1 text-muted">Horarios: ${c.horarios}</div>
                  <div class="mb-1 text-muted">Fecha de certificacion: <g:formatDate format="dd/MM/yyyy" date="${c.fechadel_certificado}"/></div>
                  <div class="mb-1 text-muted">Costo: $${c.costo}</div>
                  <div class="mb-1 text-muted">Estado del curso: ${c.estado}</div>
                  <div class="mb-1 text-muted">Tipo de inscripcion: ${misc.tipoInscrip}</div>
                  <div class="mb-1 text-muted">Pago: ${misc.pago}</div>
                  <div class="mb-1 text-muted">Nro. inscripcion: ${misc.id}</div>
                </g:if>
              </g:each>
            </div>                
          </div>
        </div>
      </div>
    </g:each>
  </div>
</div>
</body>
</html>
