<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main_aspirante"/>
    <title>Inscripcion</title>
</head>
<body>
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
    <g:form method="post" action="cupon">           
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
