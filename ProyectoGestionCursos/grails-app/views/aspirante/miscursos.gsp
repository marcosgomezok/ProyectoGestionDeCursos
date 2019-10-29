<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main_aspirante"/>
    <title>Mis cursos</title>
</head>
<body>
<div class="centrar">
  <g:if test="${miscursos}">
  <h3 class="barra">Estas inscripto en los siguientes cursos</h3>
  <div class="container">
    <g:each in="${miscursos?}">
    <div class="submenucentradocurso">
      <div class="row">
        <div class="col-md-12">
          <div class="row no-gutters border rounded overflow-hidden flex-md-row shadow-sm h-md-250 position-relative">
            <div class="col p-4 d-flex flex-column position-static">
                  <h3 class="mb-0">Nombre: <label id="curso">${it.curso.nombre}</label></h3>
                  <div class="mb-1 text-muted">Fecha de inicio: <g:formatDate format="dd/MM/yyyy" date="${it.curso.fecha_desde}"/></div>
                  <div class="mb-1 text-muted">Fecha de finalizacion: <g:formatDate format="dd/MM/yyyy" date="${it.curso.fecha_hasta}"/></div>
                  <div class="mb-1 text-muted">Carga Horaria: ${it.curso.cantidad_horas} HORAS</div>
                  <div class="mb-1 text-muted">Lugar: ${it.curso.lugar}</div>
                  <div class="mb-1 text-muted">Horarios: ${it.curso.horarios}</div>
                  <div class="mb-1 text-muted">Fecha de certificacion: <g:formatDate format="dd/MM/yyyy" date="${it.curso.fechadel_certificado}"/></div>
                  <div class="mb-1 text-muted">Costo: $${it.curso.costo}</div>
                  <div class="mb-1 text-muted">Tipo de inscripcion: ${it.tipoInscrip}</div>
                  <div class="mb-1 text-muted">Pago: ${it.cupon.pago}</div>
                  <div class="mb-1 text-muted">Nro. inscripcion: ${it.id}</div>
                  <g:form action="confirmarBajaInscripcion" method="POST">
                  <g:hiddenField name="id" value="${it.id}" />
                    <div></label><input type="submit" class="linkButton" value="Dar Baja"></div>
                  </g:form>
            </div>                
          </div>
        </div>
      </div>
    </div>
    </g:each>
  </g:if>   
  <g:else>
    <div class="m-3"><h3>No estas inscripto en ningun curso</h3></div>      
  </g:else>
    <div class="submenucentradocurso">
      <g:link controller="aspirante" action="inicio" class="btn btn-success">Volver</g:link>
    </div>
  </div>
</div>
</body>
</html>